package cn.boomers.mapper;

import java.util.List;

import cn.boomers.po.TbOrderForm;
import cn.boomers.po.TbOrderFormCustom;

public interface OrderMapper {
	
	public List<TbOrderFormCustom> selectOrder(TbOrderForm tbOrderForm);
	
	public TbOrderFormCustom selectOrderById(TbOrderForm tbOrderForm);
	
	public void updateStatus(TbOrderForm tbOrderForm);
}