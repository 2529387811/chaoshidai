package cn.boomers.mapper;

import java.util.List;

import cn.boomers.po.TbCar;
import cn.boomers.po.TbCarCustom;
import cn.boomers.po.TbCommodityCustom;
import cn.boomers.po.TbOrderFormCustom;

public interface CarMapper {
	
	public List<TbCommodityCustom> selectCar(TbCarCustom tbCarCustom);
	
	public void insertCar(TbCar tbCar);
	
	public void deleteCar(TbCar tbCar);
	
	//ɾ��������ﳵ���������
	public void deleteCars(TbCarCustom tbCarCustom);
	
	public void jiaCount(TbCarCustom tbCarCustom);
	
	//��ӵ�����
	public void insertOrder(TbOrderFormCustom tbOrderFormCustom);
}