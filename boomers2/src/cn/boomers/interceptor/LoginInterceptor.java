package cn.boomers.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.boomers.po.TbUser;
import cn.boomers.po.Users;

public class LoginInterceptor implements HandlerInterceptor {

	//执行Handler完成执行此方法
	//应用场景：统一异常处理，统一日志处理
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
	}

	//进入Handler方法之后，返回modelAndView之前执行
	//应用场景从modelAndView出发：将公司的模型数据（比如菜单导航）在这里传到视图，也可以在这里统一指定视图
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}
	
	//进入Handler方法之前执行
	//用于身份证认证、身份授权
	//比如身份认证，如果认证不通过表示当前用户没有登录，需要此方法进行拦截不再向下执行
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object object) throws Exception {
		//获取请求的url
		
		String url = request.getRequestURI();
		//判断url是否是公开地址（实际使用时将公开地址配置配置文件中）
		//这里公开地址是登录提交的地址
		if(url.indexOf("index")>=0){
			//如果进入主页，放行
			return true;
		}else if(url.indexOf("isLogin")>=0){
			//如果进行登录提交，放行
			return true;
		}else if(url.indexOf("insert")>=0){
			//如果进行注册，放行
			return true;
		}else if(url.indexOf("login")>=0){
			//如果进入登录页面，放行
			return true;
		}else if(url.indexOf("commoditydetail")>=0){
			return true;
		}else if(url.indexOf("register")>=0){
			return true;
		}
		
		/*//判断session
		HttpSession session = request.getSession();
		//从session中取出用户身份信息
		String username = (String) session.getAttribute("username");
		
		if(username!=null && username!=""){
			return true;
		}*/
		//判断session
		HttpSession session = request.getSession();
		//从session中取出用户身份信息
		TbUser user = (TbUser) session.getAttribute("user");
		
		if(user!=null){
			if(user.getUsername()!=null && user.getUsername()!=""){
				return true;
			}
		}
		
		//执行这里表示用户身份需要认证，跳转登录页面
		request.getRequestDispatcher("login").forward(request, response);
		return false;
	}

}
