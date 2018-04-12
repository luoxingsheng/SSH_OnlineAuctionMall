package cn.keti.dao;

import java.util.List;

import cn.keti.vo.Bid;

public interface BidDao {
	public void add(Bid bid);
	public List<Bid> get(int bidId);
	public void updateBid(Bid bid);

}
