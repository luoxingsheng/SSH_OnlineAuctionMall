package cn.keti.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.keti.service.BidService;
import cn.keti.service.GoodsService;
import cn.keti.service.UserService;
import cn.keti.vo.Bid;
import cn.keti.vo.Goods;
import cn.keti.vo.User;

public class BidAction extends ActionSupport implements ModelDriven<Bid> {

	//模型驱动类
	private Bid bid;
	
	public Bid getBid() {
		return bid;
	}

	public void setBid(Bid bid) {
		this.bid = bid;
	}

	public Bid getModel() {
		if (bid == null)
			bid = new Bid();
		return bid;
	}

	
	//三个依赖注入
	private BidService bidService;

	public void setBidService(BidService bidService) {
		this.bidService = bidService;
	}
	
	private GoodsService goodsService;

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	//声明属性myBidPrice,用于封装表单参数
	private Float myBidPrice;

	public Float getMyBidPrice() {
		return myBidPrice;
	}

	public void setMyBidPrice(Float myBidPrice) {
		this.myBidPrice = myBidPrice;
	}
	
	//声明对象goods，用于封装数据
	private Goods goods;
	
	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}


	//声明属性bidId和buyId用于封装用户提交的参数
	private int bidId;
	private int buyerId;

	public int getBidId() {
		return bidId;
	}

	public void setBidId(int bidId) {
		this.bidId = bidId;
	}

	public int getBuyerId() {
		return buyerId;
	}

	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	
	
	//向数据表bid中添加出价记录
	public String doSubmitBid() {
		Map<String, Object> session1 = ActionContext.getContext().getSession();
		int goodsId = (Integer) session1.get("goodsId");  //商品Id
		Goods goods = goodsService.getGoodsByGoodsId(goodsId);
		Map<String, Object> session = ActionContext.getContext().getSession();
		User buyer = (User) session.get("user");
		bidService.addBid(goods, buyer, myBidPrice);
		return "success";
	}
	
	
	//成交
	public String doDeal() {
		//根据编号从数据表bid中获取出价记录
		int bidId = bid.getBidId();
		Bid bid  = bidService.getBid(bidId);
		Goods goods = bid.getGoods();
		User buyer = bid.getBuyer();
		bid.setBidStatus(0);  //状态设为0，表示已成交
		bidService.updateBid(bid);  //更新出价记录
		goods.setGoodsStatus(0);  //状态设为0，表示已拍出
		goods.setBuyer(buyer);
		goodsService.updateGoods(goods);  //更新商品状态
		return "success";
		
	}
	
}
