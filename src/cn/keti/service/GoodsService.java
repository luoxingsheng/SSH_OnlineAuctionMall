package cn.keti.service;

import java.util.List;

import cn.keti.vo.Goods;

public interface GoodsService {

	public void addGoods(Goods goods);
	public List<Goods> getGoods(Goods condition);
	public Goods getGoodsByGoodsId(int goodsId);
	public List<Goods> getOnsaleGoodsList(int n);
	public void updateGoods(Goods condition);
	public List<Goods> getblurry(Goods condition);
	public List<Goods> getGoods2(Goods condition);

}
