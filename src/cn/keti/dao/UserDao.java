package cn.keti.dao;

import cn.keti.vo.User;
import java.util.List;

public interface UserDao {
	public void register(User user);
	public List<User> findByNameAndPass(User user);
	public void update(User u);
	public List<User> findById(int ID);
}
