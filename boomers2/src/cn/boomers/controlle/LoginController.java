package cn.boomers.controlle;



import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.boomers.po.TbUser;
import cn.boomers.po.Users;
import cn.boomers.service.UserService;

@Controller
public class LoginController
{
	@Autowired
	private UserService userService;
	
	@RequestMapping("/isLogin")
	public String isLogin(TbUser users,Model model,HttpSession session) throws Exception{
		TbUser user = userService.isLogin(users);
		if(user!=null){
			session.setAttribute("user", user);
			return "redirect:/index";
		}
		
		return "redirect:/login";
	}
	
	@RequestMapping("/insert")
	public @ResponseBody TbUser insert(@RequestBody TbUser users,Model model,HttpSession session) throws Exception{
		TbUser user = userService.isPhone2(users);
		if(user==null && users.getPhone()!=null && users.getPhone()!=""){
			String val = "";
	        Random random = new Random();
	        for ( int i = 0; i < 13; i++ )
	        {
	            String str = random.nextInt( 2 ) % 2 == 0 ? "num" : "char";
	            if ( "char".equalsIgnoreCase( str ) )
	            { // 产生字母
	                int nextInt = random.nextInt( 2 ) % 2 == 0 ? 65 : 97;
	                val += (char) ( nextInt + random.nextInt( 26 ) );
	            }
	            else if ( "num".equalsIgnoreCase( str ) )
	            { // 产生数字
	                val += String.valueOf( random.nextInt( 10 ) );
	            }
	        }
	        users.setRegtime(new Date());
	        users.setUsername("CSD"+val);
	        users.setUserpic("Screenshot.png");
			userService.insert(users);
			TbUser user2 = userService.isLogin(users);
			if(user2!=null){
				session.setAttribute("user", user2);
			}
			return user;
		}else{
			return user;
		}
	}
	
	//退出
	@RequestMapping("/logout")
	public String logout(HttpSession session)throws Exception
	{
		//清除session
		session.invalidate();
		return "redirect:/index";
	}
	
}

