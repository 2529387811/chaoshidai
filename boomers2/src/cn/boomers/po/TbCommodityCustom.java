package cn.boomers.po;

import java.math.BigDecimal;
import java.util.List;

public class TbCommodityCustom extends TbCommodity{
	private Integer carid;
	
	private List<Integer> ids;
	
	private String ordercount;

	public String getOrdercount() {
		return ordercount;
	}

	public void setOrdercount(String ordercount) {
		this.ordercount = ordercount;
	}

	public List<Integer> getIds() {
		return ids;
	}

	public void setIds(List<Integer> ids) {
		this.ids = ids;
	}

	public Integer getCarid() {
		return carid;
	}

	public void setCarid(Integer carid) {
		this.carid = carid;
	}

	
	
}