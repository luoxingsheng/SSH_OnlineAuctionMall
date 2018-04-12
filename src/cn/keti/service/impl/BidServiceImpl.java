package cn.keti.service.impl;

import java.util.Date;

import org.springframework.transaction.annotation.Transactional;

import cn.keti.dao.BidDao;
import cn.keti.service.BidService;
import cn.keti.vo.Bid;
import cn.keti.vo.Goods;
import cn.keti.vo.User;

@Transactional
public class BidServiceImpl implements BidService {
	private BidDao bidDao;
	
	public void setBidDao(BidDao bidDao) {
		this.bidDao = bidDao;
	}
	
	//向数据表bid中添加出价记录
	public void addBid(Goods goods, User buyer, float myBidPrice) {
		Bid bid = new Bid();
		bid.setBidPrice(new Float(myBidPrice));
		bid.setBidStatus(1);
		bid.setBidTime(new Date());
		bid.setBuyer(buyer);
		bid.setGoods(goods);
		bidDao.add(bid);
	}

	//根据编号从数据表bid中获取出价记录
	public Bid getBid(int bidId) {
	
		Bid bid = bidDao.get(bidId).get(0);
		
		return bid;
	}

	//将数据表bid中的出价记录更新
	public void updateBid(Bid bid) {
		bidDao.updateBid(bid);
		
	}

}
