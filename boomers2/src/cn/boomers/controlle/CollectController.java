package cn.boomers.controlle;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.boomers.po.TbCollect;
import cn.boomers.po.TbCommodity;
import cn.boomers.po.TbUser;
import cn.boomers.service.UserService;

@Controller
public class CollectController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/collect")
	@ResponseBody
	public Map<String,Object> collect(HttpServletRequest request,HttpSession session){
		Map<String,Object> map = new HashMap<String,Object>();

		int id = Integer.parseInt(request.getParameter("id"));
		int tbCollect=userService.SelectIdCollect(id);
		TbCollect collect=new TbCollect();
		TbUser user = (TbUser) session.getAttribute("user");
		if(user==null){
			String result="你还未登陆潮时代~";
			map.put("result", result);
		}else if(tbCollect==0){
			userService.insertCollect(id);
			String result="收藏成功！";
			map.put("result", result);
		}else{
			String result="你已经收藏了本商品~";
			map.put("result", result);
		}
		
		return map;
	}
	
	@RequestMapping("/selectCollect")
	public String selectCollect(HttpServletRequest request,HttpSession session) throws Exception{
		TbCollect collect=new TbCollect();
		TbUser user = (TbUser) session.getAttribute("user");
		if(user==null){
			return "login";
		}
		collect.setCollectid(user.getUserid());
		int id=Integer.parseInt(request.getParameter("pageindex"));
		System.out.println(id);
		List<TbCommodity> tbcommodity=userService.selectCollect(id);
		session.setAttribute("collect", tbcommodity);
		int countcoller=userService.CountCollect();

		//List<TbCommodity> count=userService.selectCount();
		session.setAttribute("pageindex",id);
		//System.out.println(count);
		session.setAttribute("count", countcoller);
		
		return "redirect:http://localhost:8080/boomers/view/jsp/collect.jsp";
	}
	
	
	//二级联动数据加载
	@RequestMapping("/Carousel")
	public String Carousel(HttpServletRequest request,HttpSession session){
		String name=request.getParameter("name");
		int def=0;
		System.out.println(name);
		session.setAttribute("name", name);
		session.setAttribute("def", def);
		int typeid=Integer.parseInt(request.getParameter("typeid"));
		if(typeid==0){
			return "redirect:http://localhost:8080/boomers/view/jsp/Cerror.jsp";
		}
		int id=Integer.parseInt(request.getParameter("pageindex"));
		System.out.println(typeid);
		System.out.println(id);
		session.setAttribute("typeid",typeid);
		List<TbCommodity> com=userService.selectTypeid(id,typeid);
		session.setAttribute("pageindex", id);
		session.setAttribute("com", com);
		int count=userService.CountAll(typeid);
		session.setAttribute("count", count);
		return "caidan";
	}
	//按照价格排序
	@RequestMapping("/PriceOrderByd")
	public String PriceOrderBy(HttpServletRequest request,HttpSession session){
		String name=request.getParameter("name");
		session.setAttribute("name", name);
		int typeid=Integer.parseInt(request.getParameter("typeid"));
		List<TbCommodity> com=userService.selectOrderByd(typeid);
		session.setAttribute("com", com);
		return "caidan";
	}
	@RequestMapping("/PriceOrderByi")
	public String PriceOrderByi(HttpServletRequest request,HttpSession session){
		String name=request.getParameter("name");
		session.setAttribute("name", name);
		int typeid=Integer.parseInt(request.getParameter("typeid"));
		List<TbCommodity> com=userService.selectOrderByi(typeid);
		session.setAttribute("com", com);
		return "caidan";
	}
	@RequestMapping("/CountOrderBy")
	public String CountOrderBy(HttpServletRequest request,HttpSession session){
		String name=request.getParameter("name");
		session.setAttribute("name", name);
		int typeid=Integer.parseInt(request.getParameter("typeid"));
		List<TbCommodity> com=userService.CountOrderBy(typeid);
		session.setAttribute("com", com);
		return "caidan";
	}
	@RequestMapping("/CountAll")
	public String CountAll(HttpServletRequest request,HttpSession session){
		String name=request.getParameter("name");
		session.setAttribute("name", name);
		int typeid=Integer.parseInt(request.getParameter("typeid"));
		int count=userService.CountAll(typeid);
		session.setAttribute("count", count);
		return "caidan";
	}
	@RequestMapping("/lunbo")
	public String lunbo(HttpServletRequest request,HttpSession session){
		int typeid=Integer.parseInt(request.getParameter("typeid"));
		String bigImg=request.getParameter("bigImg");
		List<TbCommodity> lunbo=userService.LunBo(typeid);
		session.setAttribute("lunbo", lunbo);
		session.setAttribute("bigImg", bigImg);
		return "lunbo";
	}
}
