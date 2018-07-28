package cn.boomers.mapper;

import java.util.List;

import cn.boomers.po.TbCommodity;

public interface SearchMapper {
	
	public List<TbCommodity> SelectLikeCommodity(String data);

	public List<TbCommodity> Select_word();
	
	public List<TbCommodity> Select_id(int data);
}
