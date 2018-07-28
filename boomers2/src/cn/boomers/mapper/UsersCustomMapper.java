package cn.boomers.mapper;

import java.util.List;

import cn.boomers.po.TbRealName;
import cn.boomers.po.TbSite;
import cn.boomers.po.TbUser;

public interface UsersCustomMapper {
	//账号登录验证
	public TbUser isUsername(TbUser user);
	//邮箱登录验证
	public TbUser isEmail(TbUser user);
	//手机登录验证
	public TbUser isPhone(TbUser user);
	
	//注册手机判断
	public TbUser isPhone2(TbUser user);
	
	public void insert(TbUser user);
	
	public TbUser selectById(TbUser user);
	
	public List<TbUser> userList();
	
	//修改用户信息
	public void updateUser(TbUser user);
	
	//修改密码
	public void updatePassword(TbUser user);
	
	//查询手机号
	public TbUser selectPhone(TbUser user);
	
	//修改手机号
	public void updatePhone(TbUser user); 
	
	//查询实名认证
	public List<TbRealName> selectReal(TbRealName tbRealName);
	
	//删除实名认证
	public void deleteReal(TbRealName tbRealName);
	
	//添加实名认证
	public void insertReal(TbRealName tbRealName);
	
	//管理收货地址
	public List<TbSite> selectSite(TbSite tbsite);
	
	//根据Id查询收货地址
	public TbSite selectSiteById(TbSite tbsite);
	
	//添加收货地址
	public void insertSite(TbSite tbsite);
	
	//删除收货地址
	public void deleteSite(TbSite tbsite);
	
	//修改收货地址
	public void updateSite(TbSite tbsite);
	
}