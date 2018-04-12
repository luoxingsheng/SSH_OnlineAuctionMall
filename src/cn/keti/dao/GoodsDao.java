package cn.keti.dao;

import java.util.List;

import cn.keti.vo.Goods;

public interface GoodsDao {
	public void addGoods(Goods goods);
	public List<Goods> search(Goods condition);
	public Goods getGoodsByGoodsId(int goodId);
	public void update(Goods condition);
	public List<Goods> blurry(Goods condition);
	public List<Goods> search2(Goods condition);
	public List<Goods> search3(Goods condition);


}
