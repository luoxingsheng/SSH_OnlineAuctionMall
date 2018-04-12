package cn.keti.dao.impl;

import java.util.List;


import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.keti.dao.UserDao;
import cn.keti.vo.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	//用户注册
	public void register(User user) {
		super.getHibernateTemplate().save(user);
	}

	//用户登录
	@SuppressWarnings("unchecked")
	public List<User> findByNameAndPass(User user) {
		return (List<User>)getHibernateTemplate()  
                .find("from User u where u.UserName=? and u.Password=?", user.getUserName(), user.getPassword());  
	}



	/**
	 * 修改密码
	 */
	public void update(User u) {
		this.getHibernateTemplate().update(u);
	}

	@SuppressWarnings("unchecked")
	public List<User> findById(int ID) {
		return (List<User>)getHibernateTemplate().find("from User u where u.UserID=? ",ID);
	}


	
	


}
