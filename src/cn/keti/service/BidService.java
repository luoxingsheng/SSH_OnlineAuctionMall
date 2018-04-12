package cn.keti.service;

import cn.keti.vo.Bid;
import cn.keti.vo.Goods;
import cn.keti.vo.User;

public interface BidService {
	public void addBid(Goods goods, User buyer, float myBidPrice);
	public Bid getBid(int bidId);
	public void updateBid(Bid bid);
}
