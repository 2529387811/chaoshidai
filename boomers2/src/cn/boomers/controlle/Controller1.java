package cn.boomers.controlle;




import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.boomers.po.TbCar;
import cn.boomers.po.TbCarCustom;
import cn.boomers.po.TbCommodity;
import cn.boomers.po.TbCommodityCustom;
import cn.boomers.po.TbOrderForm;
import cn.boomers.po.TbOrderFormCustom;
import cn.boomers.po.TbRealName;
import cn.boomers.po.TbSite;
import cn.boomers.po.TbUser;
import cn.boomers.po.TbUserCustom;
import cn.boomers.service.UserService;


@Controller
public class Controller1
{
	@Autowired
	private UserService userService;
	
	//登录页面
	@RequestMapping("/login")
	public String login() throws Exception{
		return "login";
	}
	
	//注册页面
	@RequestMapping("/register")
	public String register() throws Exception{
		return "register";
	}
	
	//主页
	@RequestMapping("/index")
	public String index(Model model) throws Exception{
		List<TbCommodity> tbCommodity = userService.selectIndex();
		List<TbCommodity> biKan = userService.selectBikan();
		List<TbCommodity> shangXin = userService.selectShangxin();
		model.addAttribute("tbCommodity", tbCommodity);
		model.addAttribute("biKan", biKan);
		model.addAttribute("shangXin", shangXin);
		return "index";
	}
	
	//商品详情
	@RequestMapping("/commoditydetail")
	public String commoditydetail(TbCommodity tbCommodity,Model model) throws Exception{
		TbCommodity tbCommodity2 = userService.selectByIdCommodity(tbCommodity);
		model.addAttribute("tbCommodity", tbCommodity2);
		return "beidema";
	}
	
	//添加到购物车
	@RequestMapping("/insertCar")
	public @ResponseBody TbCar insertCar(@RequestBody TbCar tbCar,Model model) throws Exception{
		TbCar tbCar2 = new TbCar();
			if(tbCar.getUserid()!=null){
				tbCar.setOrdercount("1");
				tbCar.setOrdertime(new Date());
				userService.insertCar(tbCar);
				tbCar2.setComid(tbCar.getComid());
			}else{
				tbCar2.setComid(null);
			}
		return tbCar2;
	}
	
	//查看购物车
	@RequestMapping("/selectCar")
	public String selectCar(Model model,HttpSession session) throws Exception{
		TbCarCustom tbCarCustom = new TbCarCustom();
		TbUser user = (TbUser) session.getAttribute("user");
		tbCarCustom.setUserid(user.getUserid());
		List<TbCommodityCustom> userCar= userService.selectCar(tbCarCustom);
		model.addAttribute("userCar", userCar);
		return "shopping-trolley";
	}
	
	//删除购物车商品
	@RequestMapping("/deleteCar")
	public void deleteCar(@RequestBody TbCar tbCar,Model model) throws Exception{
		if(tbCar.getCarid()!=null){
			userService.deleteCar(tbCar);;
		}
	}
	
	//极速免税店
	@RequestMapping("/jisu")
	public String jisu(Model model) throws Exception{
		List<TbCommodity> tbCommodity = userService.selectIndex();
		model.addAttribute("tbCommodity", tbCommodity);
		return "jisu";
	}
	
	//母婴特卖
	@RequestMapping("/muying")
	public String muying(Model model) throws Exception{
		List<TbCommodity> tbCommodity = userService.selectMuying();
		model.addAttribute("tbCommodity", tbCommodity);
		return "muying";
	}
	
	//美妆商城
	@RequestMapping("/meizhuang")
	public String meizhuang(Model model) throws Exception{
		List<TbCommodity> tbCommodity = userService.selectMeizhuang();
		model.addAttribute("tbCommodity", tbCommodity);
		return "meizhuang";
	}
	
	//国际轻奢
	@RequestMapping("/guoji")
	public String guoji(Model model) throws Exception{
		List<TbCommodity> tbCommodity = userService.selectGuoji();
		model.addAttribute("tbCommodity", tbCommodity);
		return "guoji";
	}
	
	//服装运动
	@RequestMapping("/yundong")
	public String yundong(Model model) throws Exception{
		List<TbCommodity> tbCommodity = userService.selectYundong();
		model.addAttribute("tbCommodity", tbCommodity);
		return "yundong";
	}
	
	//鞋包配饰
	@RequestMapping("/xiebao")
	public String xiebao(Model model) throws Exception{
		List<TbCommodity> tbCommodity = userService.selectXiebao();
		model.addAttribute("tbCommodity", tbCommodity);
		return "xiebao";
	}
	
	//增加减少商品数量
	@RequestMapping("/jiaCount")
	public void jiaCount(@RequestBody TbCarCustom tbCarCustom) throws Exception{
		userService.jiaCount(tbCarCustom);
	}
	
	//结算
	@RequestMapping("/jiesuan")
	public String jiesuan(Model model,TbCarCustom tbCarCustom,HttpSession session) throws Exception{
		if(tbCarCustom!=null){
			TbUser user = (TbUser) session.getAttribute("user");
			tbCarCustom.setUserid(user.getUserid());
			List<TbCommodityCustom> userCar= userService.selectCar(tbCarCustom);
			model.addAttribute("userCar", userCar);
		}
		return "jiesuan";
	}
	
	//添加到订单
	@RequestMapping("/insertOrder")
	public String insertOrder(Model model,String sheng,String shi,String xian,String dizhi,TbOrderFormCustom tbOrderFormCustom,TbCarCustom tbCarCustom,HttpSession session) throws Exception{
		if(tbOrderFormCustom!=null){
			TbUser user = (TbUser) session.getAttribute("user");
			tbOrderFormCustom.setUserid(user.getUserid());
			tbOrderFormCustom.setRaddress(sheng+'-'+shi+'-'+xian+'-'+dizhi);
			tbOrderFormCustom.setOrderstatus("等待付款");
			//userService.deleteCars(tbCarCustom);
			userService.insertOrder(tbOrderFormCustom);
		}
		
		return "zhifu";
	}
	
	//订单详情
	@RequestMapping("/userCenter")
	public String userCenter(Model model,HttpSession session) throws Exception{
		TbOrderForm tbOrderForm = new TbOrderForm();
		TbUser user = (TbUser) session.getAttribute("user");
		tbOrderForm.setUserid(user.getUserid());
		List<TbOrderFormCustom> selectOrders=userService.selectOrder(tbOrderForm);
		model.addAttribute("userCar", selectOrders);
		return "user-center";
	}
	
	//查看某个订单详情
	@RequestMapping("/orderDetail")
	public String orderDetail(Model model,TbOrderForm tbOrderForm,HttpSession session) throws Exception{
		TbUser user = (TbUser) session.getAttribute("user");
		tbOrderForm.setUserid(user.getUserid());
		TbOrderFormCustom tbOrderFormCustom = userService.selectOrderById(tbOrderForm);
		if(tbOrderFormCustom.getRaddress()!=null && tbOrderFormCustom.getRaddress()!=""){
			String Raddress = tbOrderFormCustom.getRaddress();
			String[] s = Raddress.split("-");
			model.addAttribute("Raddress", s);
		}
		
		model.addAttribute("tbOrderForm", tbOrderFormCustom);
		return "orderDetail";
	}
	
	//取消订单
	@RequestMapping("updateStatus")
	public @ResponseBody TbOrderFormCustom updateStatus(@RequestBody TbOrderForm tbOrderForm,HttpSession session) throws Exception{
		/*if(tbOrderForm.getOrderstatus()!=null && tbOrderForm.getOfid()!=null){
			userService.updateStatus(tbOrderForm);
			
		}*/
		TbOrderFormCustom tbOrderForm2 = new TbOrderFormCustom();
		if(tbOrderForm.getOrderstatus()!=null && tbOrderForm.getOfid()!=null &&tbOrderForm.getOrderstatus().equals("已取消")){
			TbUser user = (TbUser) session.getAttribute("user");
			tbOrderForm.setUserid(user.getUserid());
			userService.updateStatus(tbOrderForm);
			tbOrderForm2 = userService.selectOrderById(tbOrderForm);
		}
		return tbOrderForm2;
		
	} 
	
	//支付页面
	@RequestMapping("/zhifu")
	public String zhifu(Model model) throws Exception{
		return "zhifu";
	}
	
	//我的余额页面
	@RequestMapping("/balance")
	public String balance(Model model) throws Exception{
		return "balance";
	}
	
	//我的提现退款页面
	@RequestMapping("/balance_record")
	public String balance_record(Model model) throws Exception{
		return "balance_record";
	}
	
	//礼品卡兑换页面
	@RequestMapping("/gift_card")
	public String gift_card(Model model) throws Exception{
		return "gift_card";
	}
	
	//设置账户信息页面
	@RequestMapping("/settings")
	public String settings(Model model,HttpSession session) throws Exception{
		TbUser user = (TbUser) session.getAttribute("user");
		if(user.getBirthday()!=null && user.getBirthday()!=""){
			String birthday = user.getBirthday();
			String[] s = birthday.split("-");
			model.addAttribute("year",s[0]);
			model.addAttribute("month",s[1]);
			model.addAttribute("day",s[2]);
		}
		
		
		return "settings";
	}
	
	//提交修改信息
	@RequestMapping("/updateUser")
	public String updateUser(Model model,TbUser user,String sel1,String sel2,String sel3,MultipartFile user_pic,HttpSession session) throws Exception{
		
		//原始名称
		String originalFilename = user_pic.getOriginalFilename();
		//上传图片
		if(user_pic!=null && originalFilename!=null && originalFilename.length()>0){
			//存储图片的物理路径
			File file = new File("E:\\SpringMvc\\test1\\boomers2\\WebContent\\view\\img\\user");
			if(!file.exists()){
				file.mkdir();
			}
			String pic_path="E:\\SpringMvc\\test1\\boomers2\\WebContent\\view\\img\\user\\";
			
			//新的图片名称
			String newFileName = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
			
			//新图片
			File newFile = new File(pic_path+newFileName);
			
			//将内存中的数据写入磁盘
			user_pic.transferTo(newFile);
			user.setUserpic(newFileName);
		}
		if(!sel1.equals("year") && !sel2.equals("month") && !sel3.equals("day")){
			user.setBirthday(sel1+"-"+sel2+"-"+sel3);
		}
		TbUser user2 = (TbUser) session.getAttribute("user");
		user.setUserid(user2.getUserid());
		if(user.getUserid()!=null){
			userService.updateUser(user);
			user.setUserpassword(user2.getUserpassword());
			TbUser user3 = userService.isLogin(user);
			if(user3!=null){
				session.setAttribute("user", user3);
				return "redirect:/settings";
			}
		}
		return "settings";
	}
	
	//修改密码页面
	@RequestMapping("/password")
	public String password(Model model) throws Exception{
		return "password";
	}
	
	@RequestMapping("/updatePassword")
	public @ResponseBody TbUser updatePassword(Model model,@RequestBody TbUserCustom users,HttpSession session) throws Exception{
		//users.setUserpassword(users.getUserpassword());
		TbUser user = (TbUser) session.getAttribute("user");
		TbUser user2 = new TbUser();
		TbUser user3 = new TbUser();
		if(user!=null && users.getNewpassword()!=null && users.getNewpassword()!=""){
			user2.setUsername(user.getUsername());
			user2.setUserpassword(users.getUserpassword());
			user3 = userService.isLogin(user2);
			if(user3!=null){
				user2.setUserpassword(users.getNewpassword());
				user2.setUserid(user.getUserid());
				userService.updatePassword(user2);
				user3 = userService.isLogin(user2);
				session.setAttribute("user", user3);
			}else{
				user3 = new TbUser();
			}
		}
		return user3;
	}
	
	//绑定手机页面
	@RequestMapping("/mobile_bind_status")
	public String mobile_bind_status(Model model) throws Exception{
		return "mobile_bind_status";
	}
	
	//绑定手机页面1
	@RequestMapping("/mobile_bind")
	public String mobile_bind(Model model) throws Exception{
		return "mobile_bind";
	}
	
	//绑定手机页面2
	@RequestMapping("/mobile_bind2")
	public String mobile_bind2(Model model) throws Exception{
		return "mobile_bind2";
	}
	
	//绑定手机页面3
	@RequestMapping("/mobile_bind3")
	public String mobile_bind3(Model model) throws Exception{
		return "mobile_bind3";
	}
	
	//查询手机号
	@RequestMapping("/selectPhone")
	public @ResponseBody TbUser selectPhone(@RequestBody TbUser users,HttpSession session) throws Exception{
		TbUser user= userService.selectPhone(users);
		if(user==null && users.getPhone().length()==11){
			TbUser user2 = (TbUser) session.getAttribute("user");
			users.setUserid(user2.getUserid());
			userService.updatePhone(users);
			TbUser user3 = userService.isLogin(user2);
			session.setAttribute("user", user3);
			return user3;
		}else{
			users = new TbUser();
			users.setPhone("");
			return users;
		}
	}
	
	//管理实名认证页面
	@RequestMapping("/nameauth")
	public String nameauth(Model model,HttpSession session) throws Exception{
		TbUser user = (TbUser) session.getAttribute("user");
		if(user!=null){
			TbRealName tbRealName = new TbRealName();
			tbRealName.setUserid(user.getUserid());
			List<TbRealName> tbRealName2 = userService.selectReal(tbRealName);
			model.addAttribute("tbRealName", tbRealName2);
		}
		return "nameauth";
	}
	
	//删除实名认证
	@RequestMapping("/deleteReal")
	public void deleteReal(@RequestBody TbRealName tbRealName){
		if(tbRealName.getRealid()!=null){
			userService.deleteReal(tbRealName);
		}
	}
	
	//添加实名认证
	@RequestMapping("/insertReal")
	public @ResponseBody TbRealName insertReal(@RequestBody TbRealName tbRealName,HttpSession session){
		TbUser user = (TbUser) session.getAttribute("user");
		if(user!=null && tbRealName.getName()!=null && tbRealName.getName()!="" && tbRealName.getIdcardno()!=null && tbRealName.getIdcardno()!="" && tbRealName.getIdcardno().length()==18){
			tbRealName.setUserid(user.getUserid());
			tbRealName.setVerificationstatus("已认证");
			userService.insertReal(tbRealName);
			return tbRealName;
		}else{
			TbRealName tbRealName2 = new TbRealName();
			return tbRealName2;
		}
		
	}
	
	//管理收货地址
	@RequestMapping("/selectSite")
	public String selectSite(Model model,HttpSession session) throws Exception{
		TbUser user = (TbUser) session.getAttribute("user");
		if(user!=null){
			TbSite site = new TbSite();
			site.setUserid(user.getUserid());
			List<TbSite> sites = userService.selectSite(site);
			model.addAttribute("sites", sites);
		}
		return "addresses";
	}
	
	//添加收货地址
	@RequestMapping("/insertSite")
	public @ResponseBody TbSite insertSite(@RequestBody TbSite site,HttpSession session) throws Exception{
		TbUser user = (TbUser) session.getAttribute("user");
		if(user!=null && site.getConsignee()!=null && site.getConsignee()!="" && site.getAddress()!=null && site.getAddress()!="" && site.getConphone()!=null && site.getConphone()!="" && site.getConphone().length()==11){
			site.setUserid(user.getUserid());
			userService.insertSite(site);
			return site;
		}
		return site;
	}
	
	//删除收货地址
	@RequestMapping("/deleteSite")
	public @ResponseBody TbSite deleteSite(@RequestBody TbSite site){
		if(site.getAddressid()!=null){
			userService.deleteSite(site);
		}
		return site;
	}
	
	//修改地址页面
	@RequestMapping("/updateSite")
	public String updateSite(TbSite site,Model model,HttpSession session){
		TbUser user = (TbUser) session.getAttribute("user");
		if(user!=null && site.getAddressid()!=null){
			site.setUserid(user.getUserid());
			TbSite site2 = userService.selectSiteById(site);
			List<TbSite> sites = userService.selectSite(site);
			model.addAttribute("sites", sites);
			if(site2!=null){
				model.addAttribute("site2", site2);
				if(site2.getAddress()!=null && site2.getAddress()!=""){
					String address = site2.getAddress();
					String[] s = address.split("-");
					model.addAttribute("sheng",s[0]);
					model.addAttribute("shi",s[1]);
					model.addAttribute("xian",s[2]);
				}
			}
		}
		return "addresses";
	}
	
	//提交收货地址
	@RequestMapping("/submitUpdateSite")
	public @ResponseBody TbSite submitUpdateSite(@RequestBody TbSite site,HttpSession session) throws Exception{
		TbUser user = (TbUser) session.getAttribute("user");
		if(user!=null && site.getConsignee()!=null && site.getConsignee()!="" && site.getAddress()!=null && site.getAddress()!="" && site.getConphone()!=null && site.getConphone()!="" && site.getConphone().length()==11){
			site.setUserid(user.getUserid());
			userService.updateSite(site);
			return site;
		}
		return site;
	}
	
	//绑定站外分享页面
	@RequestMapping("/zhanwai")
	public String zhanwai(){
		return "zhanwai";
	}
}

