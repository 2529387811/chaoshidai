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
	//�˺ŵ�¼
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
	
	//ע��
	public void insert(TbUser user)throws Exception{
		usersCustomMapper.insert(user);
	}
	
	//��ҳ����
	public List<TbCommodity> selectIndex()throws Exception{
		return commodityMapper.selectIndex();
	}
	
	//��ҳÿ�ձؿ�����
	public List<TbCommodity> selectBikan()throws Exception{
		return commodityMapper.selectBikan();
	}
	
	//������������
	public List<TbCommodity> selectShangxin(){
		return commodityMapper.selectShangxin();
	}
	
	//ĸӤ����
	public List<TbCommodity> selectMuying()throws Exception{
		return commodityMapper.selectMuying();
	}
	
	//��ױ�̳�����
	public List<TbCommodity> selectMeizhuang()throws Exception{
		return commodityMapper.selectMeizhuang();
	}
	
	//������������
	public List<TbCommodity> selectGuoji()throws Exception{
		return commodityMapper.selectGuoji();
	}
	
	//��װ�˶�����
	public List<TbCommodity> selectYundong()throws Exception{
		return commodityMapper.selectYundong();
	}
	
	//Ь������
	public List<TbCommodity> selectXiebao()throws Exception{
		return commodityMapper.selectXiebao();
	}
	
	//��Ʒ����
	public TbCommodity selectByIdCommodity(TbCommodity tbCommodity)throws Exception{
		return commodityMapper.selectByIdCommodity(tbCommodity);
	}
	
	//��ӵ����ﳵ
	public void insertCar(TbCar tbCar)throws Exception{
		carMapper.insertCar(tbCar);
	}
	
	//�鿴���ﳵ
	public List<TbCommodityCustom> selectCar(TbCarCustom tbCarCustom)throws Exception{
		return carMapper.selectCar(tbCarCustom);
	}
	
	//ɾ�����ﳵ��Ʒ
	public void deleteCar(TbCar tbCar)throws Exception{
		carMapper.deleteCar(tbCar);
	}
	
	//ɾ��������ﳵ���������
	public void deleteCars(TbCarCustom tbCarCustom)throws Exception{
		carMapper.deleteCars(tbCarCustom);
	}
	
	//���Ӽ�����Ʒ����
	public void jiaCount(TbCarCustom tbCarCustom)throws Exception{
		carMapper.jiaCount(tbCarCustom);
	}
	
	//��ӵ�����
	public void insertOrder(TbOrderFormCustom tbOrderFormCustom)throws Exception{
		carMapper.insertOrder(tbOrderFormCustom);
	}
	
	//��������
	public List<TbOrderFormCustom> selectOrder(TbOrderForm tbOrderForm)throws Exception{
		return orderMapper.selectOrder(tbOrderForm);
	}
	
	//�鿴ĳ������
	public TbOrderFormCustom selectOrderById(TbOrderForm tbOrderForm)throws Exception{
		return orderMapper.selectOrderById(tbOrderForm);
	}

	//��Ʒ����
	public List<TbCommodity> SelectLikeCommodity(String data){
		return searchmapper.SelectLikeCommodity(data);
		
	}
	public List<TbCommodity> Select_word(){
		return searchmapper.Select_word();
	}
	public List<TbCommodity> Select_id(int data){
		return searchmapper.Select_id(data);
	}
	
	//��Ʒ�ղ�
	public void insertCollect(int id){
		
		 collect.insertCollect(id);
	}
	//��ѯ�ظ��ղص���Ʒ
	public int SelectIdCollect(int id){
		return collect.SelectIdCollect(id);
	}
	//��ѯ�����ղ���Ʒ
	public List<TbCommodity> selectCollect(int pageindex){
		
		return collect.selectCollect(pageindex);
	}
	public List<TbCommodity> selectCount(){
		return collect.selectCount();
	}
	public int CountCollect(){
		return collect.CountCollect();
	}
	//�����˵�
	public List<TbCommodity> selectTypeid(int pageindex,int typeid){
		return collect.selectTypeid(pageindex,typeid);
	}
	//���ݼ۸�����
	public List<TbCommodity> selectOrderByd(int typeid){
		return collect.selectOrderByd(typeid);
	}
	public List<TbCommodity> selectOrderByi(int typeid){
		return collect.selectOrderByi(typeid);
	}
	//������������
	public List<TbCommodity> CountOrderBy(int typeid){
		return collect.CountOrderBy(typeid);
	}
	public int CountAll(int typeid){
		return collect.CountAll(typeid);
	}
	//ͼƬ�ֲ�
	public List<TbCommodity> LunBo(int typeid){
		return collect.LunBo(typeid);
	}

	
	//ȡ������
	public void updateStatus(TbOrderForm tbOrderForm)throws Exception{
		orderMapper.updateStatus(tbOrderForm);
	}
	
	//����Id��ѯ�û���Ϣ
	public TbUser selectById(TbUser user)throws Exception{
		return usersCustomMapper.selectById(user);
	}
	
	//����id�޸��û���Ϣ
	public void updateUser(TbUser user)throws Exception{
		usersCustomMapper.updateUser(user);
	}
	
	//�޸��û�����
	public void updatePassword(TbUser user)throws Exception{
		usersCustomMapper.updatePassword(user);
	}
	
	//��ѯ�ֻ���
	public TbUser selectPhone(TbUser user)throws Exception{
		return usersCustomMapper.selectPhone(user);
	}
	
	//�޸��ֻ���
	public void updatePhone(TbUser user)throws Exception{
		usersCustomMapper.updatePhone(user);
	}
	
	//��ѯʵ����֤
	public List<TbRealName> selectReal(TbRealName tbRealName){
		return usersCustomMapper.selectReal(tbRealName);
	}
	
	//ɾ��ʵ����֤
	public void deleteReal(TbRealName tbRealName){
		usersCustomMapper.deleteReal(tbRealName);
	}
	
	//���ʵ����֤
	public void insertReal(TbRealName tbRealName){
		usersCustomMapper.insertReal(tbRealName);
	}
	
	//�����ջ���ַ
	public List<TbSite> selectSite(TbSite tbsite){
		return usersCustomMapper.selectSite(tbsite);
	}
	
	//����Id��ѯ�ջ���ַ
	public TbSite selectSiteById(TbSite tbsite){
		return usersCustomMapper.selectSiteById(tbsite);
	}
	
	//����ջ���ַ
	public void insertSite(TbSite tbsite){
		usersCustomMapper.insertSite(tbsite);
	}
	
	//ɾ���ջ���ַ
	public void deleteSite(TbSite tbsite){
		usersCustomMapper.deleteSite(tbsite);
	}
	
	//�޸��ջ���ַ
	public void updateSite(TbSite tbsite){
		usersCustomMapper.updateSite(tbsite);
	}
	
}