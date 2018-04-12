package cn.keti.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;


import cn.keti.dao.GoodsDao;
import cn.keti.service.GoodsService;
import cn.keti.vo.Goods;

@Transactional
public class GoodsServiceImpl implements GoodsService {

	private GoodsDao goodsDao;
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}
	
	/**
	 * 添加商品
	 */
	public void addGoods(Goods goods) {
		goodsDao.addGoods(goods);
	}
	
	
	/**
	 * 查看我的在拍商品
	 */
	public List<Goods> getGoods(Goods condition) {
		List<Goods> list = goodsDao.search3(condition);
		return list;
	}

	/**
	 * 根据商品编号获取商品信息
	 */
	public Goods getGoodsByGoodsId(int goodsId) {
		return goodsDao.getGoodsByGoodsId(goodsId);
	}

	/**
	 * 获取在拍商品列表
	 */
	public List<Goods> getOnsaleGoodsList(int n) {
		Goods goods = new Goods();
		goods.setGoodsStatus(n);
		List<Goods> list = goodsDao.search(goods);
		return list;
	}

	
	/**
	 * 更新商品状态
	 * */
	public void updateGoods(Goods condition) {
		goodsDao.update(condition);
	}
	
	/**
	 * 模糊搜索
	 */
	public List<Goods> getblurry(Goods condition) {
		 List<Goods> list = goodsDao.blurry(condition);
		 return list;
	}
	
	/**
	 * 我的购物车
	 */
	public List<Goods> getGoods2(Goods condition) {
		List<Goods> list = goodsDao.search2(condition);
		return list;
	}
	


}
