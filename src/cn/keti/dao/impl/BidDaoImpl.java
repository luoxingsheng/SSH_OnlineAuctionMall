package cn.keti.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.keti.dao.BidDao;
import cn.keti.vo.Bid;

public class BidDaoImpl extends HibernateDaoSupport implements BidDao {

	//向数据表bid中添加出价记录
	public void add(Bid bid) {
		this.getHibernateTemplate().save(bid);
	}

	//根据编号从数据表bid中获取出价记录
	@SuppressWarnings("unchecked")
	public List<Bid> get(int bidId) {
		return (List<Bid>) this.getHibernateTemplate().find("from Bid b where b.bidId=? ",bidId);
		
	}

	//将数据表bid中的出价记录更新
	public void updateBid(Bid bid) {
		this.getHibernateTemplate().update(bid);
	}

}
