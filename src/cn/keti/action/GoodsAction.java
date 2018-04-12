package cn.keti.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.keti.service.GoodsService;
import cn.keti.vo.Goods;
import cn.keti.vo.User;

@SuppressWarnings("serial")
public class GoodsAction extends ActionSupport implements ModelDriven<Goods> {

	//模型驱动
	private Goods goods;
	
	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public Goods getModel() {
		if (goods == null)
			goods = new Goods();
		return goods;
	}
	
	//依赖注入
	private GoodsService goodsService;

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	
	
	
	private File Image;
	private String fileName;
	private String contentType;

	public void setImage(File file) {
		this.Image = file;
	}
	
	//得到文件名
		public void setImageFileName(String fileName){
			this.fileName = fileName;
		}

		public void setImagContentType(String contentType) {
			this.contentType = contentType;
		}

		/**
		 * 添加新拍卖商品
		 * */
		public String upload(){
			//1 保存上传的文件
			String targetDirectory = "E:\\spring3_ssh1\\WebRoot\\uploadImages";
			//重命名上传文件
			String targetFileName = renameImage(fileName);
			//在指定目录创建文件
			File target = new File(targetDirectory,targetFileName);
			try {
				FileUtils.copyFile(Image, target);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			// 2 保存新商品描述信息
			goods.setGoodsPic(targetFileName);
			Map<String, Object> session = ActionContext.getContext().getSession();
			User saler = (User) session.get("user");
			goods.setSaler(saler);
			goods.setBuyer(saler);
			goodsService.addGoods(goods);
			return "upload";
		}
		
		
		/**
	     * 文件重命名
	     * */
	    public String renameImage(String fileName){
				String formatDate = new SimpleDateFormat("yyMMddHHmmss").format(new Date());  //当前时间字符串
	        int random = new Random().nextInt(10000);
	        String extension = fileName.substring(fileName.lastIndexOf("."));  //文件后缀
	        
	        return formatDate + random + extension;
	    }
	
	    public String getFileName() {
	    	return fileName;
	    }
	    
	    
	    /**
	     * 查看我的在拍商品
	     */
	    
	    public String MyGoods() {
	    	Goods goods = new Goods();
	    	Map<String, Object> session = ActionContext.getContext().getSession();
	    	User saler = (User) session.get("user");
	    	goods.setSaler(saler);
	    	List<Goods> mygoodslist = goodsService.getGoods(goods);
	    	@SuppressWarnings("unchecked")
			Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
	    	request.put("mygoodslist", mygoodslist);
			return "mygoods";
	    }
	    
	    
	    /**
	     * 查看我的商品的出价记录
	     */
	    
	    public String MyGoods1() {
	    	Goods goods = new Goods();
	    	Map<String, Object> session = ActionContext.getContext().getSession();
	    	User saler = (User) session.get("user");
	    	goods.setSaler(saler);
	    	System.out.println(saler);
	    	System.out.println("11111111111111111111111111111111");
	    	List<Goods> mygoodslist1 = goodsService.getGoods(goods);
	    	@SuppressWarnings("unchecked")
			Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
	    	request.put("mygoodslist1", mygoodslist1);
			return "mygoods1";
	    }
	    
	    
	    /**
	     * 成交
	     */
	    
	    public String doBid() {
	    	int goodsId = goods.getGoodsId();
	    	//这个request的作用是在bidaction中获取goodsId
	    	ActionContext.getContext().getSession().put("goodsId", goodsId);
	    	Goods g = goodsService.getGoodsByGoodsId(goodsId);
	    	@SuppressWarnings("unchecked")
			Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
	    	request.put("g", g);
			return "doBid";	
	    }
	 
	    
	    
	    /**
	     * 在拍商品列表
	     */
	    public String onSaleGoodsList() {
	    	List<Goods> onSaleGoodsList = goodsService.getOnsaleGoodsList(1);
	    	@SuppressWarnings("unchecked")
			Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
	    	request.put("onSaleGoodsList", onSaleGoodsList);
			return "onSaleGoodsList";
	    	
	    }
	    
	    /**
	     * 商品出价记录
	     */
	    public String BidRecord() {
	    	Goods goods = new Goods();
	    	Map<String, Object> session = ActionContext.getContext().getSession();
	    	User saler = (User) session.get("user");
	    	goods.setSaler(saler);
	    	List<Goods> mygoodslist = goodsService.getGoods(goods);
	    	@SuppressWarnings("unchecked")
			Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
	    	request.put("mygoodslist", mygoodslist);
			return "bidRecord";
	    	
	    }
	    
	    /**
	     * 模糊搜索
	     */
	    public String blurry() {
	    	String name = goods.getGoodsName();
	    	System.out.println(name);
	    	goods.setGoodsName(name);
	    	List<Goods> blurry = goodsService.getblurry(goods);
	    	ServletActionContext.getRequest().setAttribute("blurry", blurry);
	    	return "blurry";
	    }
	    
	    /**
	     * 我的拍卖纪录
	     */
	    public String shopcar() {
	    	Map<String, Object> session = ActionContext.getContext().getSession();
	    	System.out.println(session);
	    	User buyer = (User) session.get("user");
	    	System.out.println(buyer);
	    	goods.setBuyer(buyer);
	    	List<Goods> shopcar = goodsService.getGoods2(goods);
	    	ServletActionContext.getRequest().setAttribute("shopcar", shopcar);
	    	return "shopcar";
	    }
	    

   /**
	     * 查看珍宝玉器
	     */
	    public String zbyq() {
	    	List<Goods> zbyq = goodsService.getOnsaleGoodsList(1);
	    	ServletActionContext.getRequest().setAttribute("zbyq", zbyq);
	    	return "zbyq";
	    }

	    /**
	     * 查看文玩收藏
	     */
	    public String wwsc() {
	    	List<Goods> wwsc = goodsService.getOnsaleGoodsList(2);
	    	ServletActionContext.getRequest().setAttribute("wwsc", wwsc);
	    	return "wwsc";
	    }
	    
	    /**
	     * 查看紫砂陶瓷
	     */
	    public String zstc() {
	    	List<Goods> zstc = goodsService.getOnsaleGoodsList(3);
	    	ServletActionContext.getRequest().setAttribute("zstc", zstc);
	    	return "zstc";
	    }
	    /**
	     * 查看艺术品
	     */
	    public String ysp() {
	    	List<Goods> ysp = goodsService.getOnsaleGoodsList(4);
	    	ServletActionContext.getRequest().setAttribute("ysp", ysp);
	    	return "ysp";
	    }
	    /**
	     * 查看工艺品
	     */
	    public String gyp() {
	    	List<Goods> gyp = goodsService.getOnsaleGoodsList(5);
	    	ServletActionContext.getRequest().setAttribute("gyp", gyp);
	    	return "gyp";
	    }
	        
}
