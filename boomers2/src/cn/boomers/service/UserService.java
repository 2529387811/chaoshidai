package cn.boomers.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.boomers.mapper.CarMapper;
import cn.boomers.mapper.Collect;
import cn.boomers.mapper.CommodityMapper;
import cn.boomers.mapper.OrderMapper;
import cn.boomers.mapper.SearchMapper;
import cn.boomers.mapper.UsersCustomMapper;
import cn.boomers.po.TbCar;
import cn.boomers.po.TbCarCustom;
import cn.boomers.po.TbCommodity;
import cn.boomers.po.TbCommodityCustom;
import cn.boomers.po.TbOrderForm;
import cn.boomers.po.TbOrderFormCustom;
import cn.boomers.po.TbRealName;
import cn.boomers.po.TbSite;
import cn.boomers.po.TbUser;



@Service
public class UserService
{
	@Autowired
	private UsersCustomMapper usersCustomMapper;
	
	@Autowired
	private CommodityMapper commodityMapper;
	
	@Autowired
	private CarMapper carMapper;
	
	@Autowired
	private OrderMapper orderMapper;
	
	@Autowired
	private SearchMapper searchmapper;
	
	@Autowired
	private Collect collect;
	//账号登录
	public TbUser isLogin(TbUser user)throws Exception{
		if(user.getUsername().matches("[0-9]+")){
			return usersCustomMapper.isPhone(user);
		}else if(user.getUsername().contains("@")){
			return usersCustomMapper.isEmail(user);
		}else{
			return usersCustomMapper.isUsername(user);
		}
	}
	
	public TbUser isPhone2(TbUser user)throws Exception{
		return usersCustomMapper.isPhone2(user);
	}
	
	//注册
	public void insert(TbUser user)throws Exception{
		usersCustomMapper.insert(user);
	}
	
	//主页数据
	public List<TbCommodity> selectIndex()throws Exception{
		return commodityMapper.selectIndex();
	}
	
	//主页每日必看数据
	public List<TbCommodity> selectBikan()throws Exception{
		return commodityMapper.selectBikan();
	}
	
	//今日上新数据
	public List<TbCommodity> selectShangxin(){
		return commodityMapper.selectShangxin();
	}
	
	//母婴数据
	public List<TbCommodity> selectMuying()throws Exception{
		return commodityMapper.selectMuying();
	}
	
	//美妆商城数据
	public List<TbCommodity> selectMeizhuang()throws Exception{
		return commodityMapper.selectMeizhuang();
	}
	
	//国际轻奢数据
	public List<TbCommodity> selectGuoji()throws Exception{
		return commodityMapper.selectGuoji();
	}
	
	//服装运动数据
	public List<TbCommodity> selectYundong()throws Exception{
		return commodityMapper.selectYundong();
	}
	
	//鞋包数据
	public List<TbCommodity> selectXiebao()throws Exception{
		return commodityMapper.selectXiebao();
	}
	
	//商品详情
	public TbCommodity selectByIdCommodity(TbCommodity tbCommodity)throws Exception{
		return commodityMapper.selectByIdCommodity(tbCommodity);
	}
	
	//添加到购物车
	public void insertCar(TbCar tbCar)throws Exception{
		carMapper.insertCar(tbCar);
	}
	
	//查看购物车
	public List<TbCommodityCustom> selectCar(TbCarCustom tbCarCustom)throws Exception{
		return carMapper.selectCar(tbCarCustom);
	}
	
	//删除购物车商品
	public void deleteCar(TbCar tbCar)throws Exception{
		carMapper.deleteCar(tbCar);
	}
	
	//删除多个购物车里面的数据
	public void deleteCars(TbCarCustom tbCarCustom)throws Exception{
		carMapper.deleteCars(tbCarCustom);
	}
	
	//增加减少商品数量
	public void jiaCount(TbCarCustom tbCarCustom)throws Exception{
		carMapper.jiaCount(tbCarCustom);
	}
	
	//添加到订单
	public void insertOrder(TbOrderFormCustom tbOrderFormCustom)throws Exception{
		carMapper.insertOrder(tbOrderFormCustom);
	}
	
	//订单详情
	public List<TbOrderFormCustom> selectOrder(TbOrderForm tbOrderForm)throws Exception{
		return orderMapper.selectOrder(tbOrderForm);
	}
	
	//查看某个订单
	public TbOrderFormCustom selectOrderById(TbOrderForm tbOrderForm)throws Exception{
		return orderMapper.selectOrderById(tbOrderForm);
	}

	//商品搜索
	public List<TbCommodity> SelectLikeCommodity(String data){
		return searchmapper.SelectLikeCommodity(data);
		
	}
	public List<TbCommodity> Select_word(){
		return searchmapper.Select_word();
	}
	public List<TbCommodity> Select_id(int data){
		return searchmapper.Select_id(data);
	}
	
	//商品收藏
	public void insertCollect(int id){
		
		 collect.insertCollect(id);
	}
	//查询重复收藏的商品
	public int SelectIdCollect(int id){
		return collect.SelectIdCollect(id);
	}
	//查询所有收藏商品
	public List<TbCommodity> selectCollect(int pageindex){
		
		return collect.selectCollect(pageindex);
	}
	public List<TbCommodity> selectCount(){
		return collect.selectCount();
	}
	public int CountCollect(){
		return collect.CountCollect();
	}
	//二级菜单
	public List<TbCommodity> selectTypeid(int pageindex,int typeid){
		return collect.selectTypeid(pageindex,typeid);
	}
	//根据价格排序
	public List<TbCommodity> selectOrderByd(int typeid){
		return collect.selectOrderByd(typeid);
	}
	public List<TbCommodity> selectOrderByi(int typeid){
		return collect.selectOrderByi(typeid);
	}
	//根据销量排序
	public List<TbCommodity> CountOrderBy(int typeid){
		return collect.CountOrderBy(typeid);
	}
	public int CountAll(int typeid){
		return collect.CountAll(typeid);
	}
	//图片轮播
	public List<TbCommodity> LunBo(int typeid){
		return collect.LunBo(typeid);
	}

	
	//取消订单
	public void updateStatus(TbOrderForm tbOrderForm)throws Exception{
		orderMapper.updateStatus(tbOrderForm);
	}
	
	//根据Id查询用户信息
	public TbUser selectById(TbUser user)throws Exception{
		return usersCustomMapper.selectById(user);
	}
	
	//根据id修改用户信息
	public void updateUser(TbUser user)throws Exception{
		usersCustomMapper.updateUser(user);
	}
	
	//修改用户密码
	public void updatePassword(TbUser user)throws Exception{
		usersCustomMapper.updatePassword(user);
	}
	
	//查询手机号
	public TbUser selectPhone(TbUser user)throws Exception{
		return usersCustomMapper.selectPhone(user);
	}
	
	//修改手机号
	public void updatePhone(TbUser user)throws Exception{
		usersCustomMapper.updatePhone(user);
	}
	
	//查询实名认证
	public List<TbRealName> selectReal(TbRealName tbRealName){
		return usersCustomMapper.selectReal(tbRealName);
	}
	
	//删除实名认证
	public void deleteReal(TbRealName tbRealName){
		usersCustomMapper.deleteReal(tbRealName);
	}
	
	//添加实名认证
	public void insertReal(TbRealName tbRealName){
		usersCustomMapper.insertReal(tbRealName);
	}
	
	//管理收货地址
	public List<TbSite> selectSite(TbSite tbsite){
		return usersCustomMapper.selectSite(tbsite);
	}
	
	//根据Id查询收货地址
	public TbSite selectSiteById(TbSite tbsite){
		return usersCustomMapper.selectSiteById(tbsite);
	}
	
	//添加收货地址
	public void insertSite(TbSite tbsite){
		usersCustomMapper.insertSite(tbsite);
	}
	
	//删除收货地址
	public void deleteSite(TbSite tbsite){
		usersCustomMapper.deleteSite(tbsite);
	}
	
	//修改收货地址
	public void updateSite(TbSite tbsite){
		usersCustomMapper.updateSite(tbsite);
	}
	
}