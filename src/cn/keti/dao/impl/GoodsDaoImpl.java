package cn.keti.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.keti.dao.GoodsDao;
import cn.keti.vo.Goods;

public class GoodsDaoImpl extends HibernateDaoSupport implements GoodsDao {

	/**
	 * 添加商品
	 */
	public void addGoods(Goods goods) {
		this.getHibernateTemplate().save(goods);
		
	}

	/**
	 * 根据条件获取商品列表
	 */
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Goods> search(final Goods condition) {
		return this.getHibernateTemplate().executeFind(new HibernateCallback() {
			@SuppressWarnings("unlikely-arg-type")
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(Goods.class);
				if(condition != null){
					//根据商品状态筛选
					if(condition.getGoodsStatus() != 0 && !"".equals(condition.getGoodsStatus()))
						criteria.add(Restrictions.eq("goodsStatus", condition.getGoodsStatus()));
					//根据商品卖家筛选
					if(condition.getSaler() != null && !"".equals(condition.getSaler()))
						criteria.add(Restrictions.eq("saler", condition.getSaler()));
				}
				return criteria.list();
			}
	
		});

	}

	
	/**
	 * 根据商品编号获取商品信息
	 */
	public Goods getGoodsByGoodsId(int goodsId) {
		Goods goods = this.getHibernateTemplate().get(Goods.class, goodsId);
		return goods;
	}
	
	/**
	 * 更新商品状态
	 */
	public void update(Goods condition) {
		this.getHibernateTemplate().update(condition);
	}
	
	/**
	 * 模糊搜索功能
	 */
	@SuppressWarnings("unchecked")
	public List<Goods> blurry(final Goods condition) {
		 List<Goods> list = getHibernateTemplate()
			 .find("from Goods g where g.goodsName LIKE ?"  , "%"+condition.getGoodsName()+"%"); 
		 return list;
	}
	
	/**
	 * 查看我的购物车
	 */
	@SuppressWarnings("unchecked")
	public List<Goods> search2(final Goods condition) {
		return (List<Goods>)getHibernateTemplate()  
                .find("from Bid b where b.buyer=? and b.bidStatus!=?", condition.getBuyer(),0);  
	}

	/**
	 * 我的在拍商品
	 */
	@SuppressWarnings("unchecked")
	public List<Goods> search3(final Goods condition) {
		return (List<Goods>)getHibernateTemplate()  
                .find("from Goods g where g.saler=? and g.goodsStatus!=?", condition.getSaler(),0);  
	}


}
