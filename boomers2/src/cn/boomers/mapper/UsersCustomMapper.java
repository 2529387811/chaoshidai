package cn.boomers.mapper;

import java.util.List;

import cn.boomers.po.TbRealName;
import cn.boomers.po.TbSite;
import cn.boomers.po.TbUser;

public interface UsersCustomMapper {
	//�˺ŵ�¼��֤
	public TbUser isUsername(TbUser user);
	//�����¼��֤
	public TbUser isEmail(TbUser user);
	//�ֻ���¼��֤
	public TbUser isPhone(TbUser user);
	
	//ע���ֻ��ж�
	public TbUser isPhone2(TbUser user);
	
	public void insert(TbUser user);
	
	public TbUser selectById(TbUser user);
	
	public List<TbUser> userList();
	
	//�޸��û���Ϣ
	public void updateUser(TbUser user);
	
	//�޸�����
	public void updatePassword(TbUser user);
	
	//��ѯ�ֻ���
	public TbUser selectPhone(TbUser user);
	
	//�޸��ֻ���
	public void updatePhone(TbUser user); 
	
	//��ѯʵ����֤
	public List<TbRealName> selectReal(TbRealName tbRealName);
	
	//ɾ��ʵ����֤
	public void deleteReal(TbRealName tbRealName);
	
	//���ʵ����֤
	public void insertReal(TbRealName tbRealName);
	
	//�����ջ���ַ
	public List<TbSite> selectSite(TbSite tbsite);
	
	//����Id��ѯ�ջ���ַ
	public TbSite selectSiteById(TbSite tbsite);
	
	//����ջ���ַ
	public void insertSite(TbSite tbsite);
	
	//ɾ���ջ���ַ
	public void deleteSite(TbSite tbsite);
	
	//�޸��ջ���ַ
	public void updateSite(TbSite tbsite);
	
}