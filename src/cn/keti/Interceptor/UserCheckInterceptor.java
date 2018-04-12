package cn.keti.Interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionProxy;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class UserCheckInterceptor extends AbstractInterceptor{
	
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
//		获取ActionContext对象
		ActionContext ac=invocation.getInvocationContext();
//		获取ActionContext的代理对象		
		 ActionProxy proxy=invocation.getProxy();
//		 获取当前执行的方法名
		 String methodName=proxy.getMethod();
		 System.out.println(methodName);
		          //判断是否登陆
		          if(!"login".equals(methodName)){
		              //先获取当前登陆的用户
		              Object obj=ac.getSession().get("userInfo");
		              if(obj == null){
		                  //当前用户没有登陆
		                  return "login";
		              }else{
		                  //当前用户有登陆
		                  return invocation.invoke();
		              }
		          }else{
		              //当前用户正在登陆
		              return invocation.invoke();
		          }
	}

}
