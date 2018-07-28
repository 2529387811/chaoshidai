package cn.boomers.controlle;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import cn.boomers.po.TbCommodity;
import cn.boomers.service.UserService;

@Controller
public class SearchController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/search_")

	public ModelAndView search_(HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView view = new ModelAndView();
		
		String data=request.getParameter("search");
		if(data.equals("")){
			view.setViewName("redirect:http://localhost:8080/boomers/view/jsp/search.jsp");
		}else{

			List<TbCommodity> list = userService.SelectLikeCommodity(data);
	
			session.setAttribute("data", list);
			view.setViewName("redirect:http://localhost:8080/boomers/view/jsp/search.jsp");
		}
		return view;
	}
	@RequestMapping("/search_dv")
	@ResponseBody 
	public Map<String,Object> search_dv(HttpServletRequest request,HttpSession session) throws Exception{

		Map<String,Object> map = new HashMap<String,Object>();

		List<TbCommodity> list = userService.Select_word();

		map.put("result", list);
		return map;
	}
	@RequestMapping("/search")
	@ResponseBody 
	public Map<String,Object> search(HttpServletRequest request) throws Exception{	
		String data=request.getParameter("ajaxData");
		
		Map<String,Object> map = new HashMap<String,Object>();
		List<TbCommodity> list = userService.SelectLikeCommodity(data);
		


		map.put("result", list);
		
		return map;
	}
	@RequestMapping("/search_id")
	public ModelAndView search_id(HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView view = new ModelAndView();
		
		int data=Integer.parseInt(request.getParameter("id"));

		List<TbCommodity> list = userService.Select_id(data);

		session.setAttribute("data", list);
		view.setViewName("redirect:http://localhost:8080/boomers/view/jsp/search.jsp");
		return view;
	}
}
