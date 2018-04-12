package cn.keti.action;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.keti.service.UserService;
import cn.keti.vo.User;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport implements ModelDriven<User> {
	
	public String msg=null;
    HttpServletRequest request = ServletActionContext.getRequest();
    String old_password = request.getParameter("old_password");
	
	//模型驱动类
	private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public User getModel() {
		if (user == null)
			user = new User();
		return user;
	}
	
	
	//依赖注入
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	
	/**
	 * 注册
	 */
	
	public String register() {
		userService.register(user);
		return "login";
	}
	
	
	/**
	 * 登录
	 */
	
	public String login() {
	     User userinfo = (User) userService.CheckUser(user);
	     if(userinfo!=null) {	 
	    	 ActionContext.getContext().getSession().put("user", userinfo);
	    	 return "success";
	     }
	     else {
	    	 msg="用户名或密码错误，请检查后重新登录！";
	    	 ActionContext.getContext().getSession().put("msg", "msg");
	    	 return "login";
	     }
	}
	
	
	/**
	 * 注销
	 */
	
	public String logout() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		if(session.get("user")!=null) {
			session.remove("user");
			return "logout";
		} 
		else 
			return "error";
		
	}
	
	
	/**
	 * 修改密码
	 * */
	public String update(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		User u = (User) session.get("userinfo");
		if(old_password!=u.getPassword()) {
			msg="密码与原密码不一致，请核对后再修改";
			return "update_error";
		}else
		u.setPassword(user.getPassword());
		session.put("userinfo", u);
		userService.updateUser(u);
		int n = u.getUserID();
		@SuppressWarnings("unchecked")
		Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
		request.put("n", n);
		return "login";
	}
	

	
	

}
