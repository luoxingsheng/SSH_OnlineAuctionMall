package cn.keti.service;


import cn.keti.vo.User;

public interface UserService {
	public void register(User user);
	public User CheckUser(User user);
	public void updateUser(User u);
	public User getUserById(int ID);

}
