package cn.keti.service.impl;


import org.springframework.transaction.annotation.Transactional;
import cn.keti.dao.UserDao;
import cn.keti.service.UserService;
import cn.keti.vo.User;

@Transactional
public class UserServiceImpl implements UserService {
	
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	//用户注册
	public void register(User user) {
	userDao.register(user);
	}

	//用户登录
	public User CheckUser(User user) {
		// TODO Auto-generated method stub
		return userDao.findByNameAndPass(user).get(0);
	}


	
	/**
	 * 修改密码
	 */
	public void updateUser(User u) {
		userDao.update(u);
	}

	public User getUserById(int ID) {
		// TODO Auto-generated method stub
		return userDao.findById(ID).get(0);
	}



	

	



	

}
