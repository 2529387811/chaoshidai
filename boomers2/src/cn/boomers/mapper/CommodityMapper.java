package cn.boomers.mapper;

import cn.boomers.po.TbComment;
import cn.boomers.po.TbCommodity;
import cn.boomers.po.Users;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CommodityMapper {
	public List<TbCommodity> selectIndex();
	
	public TbCommodity selectByIdCommodity(TbCommodity tbCommodity);
	
	public List<TbCommodity> selectMuying();
	
	public List<TbCommodity> selectGuoji();
	
	public List<TbCommodity> selectYundong();
	
	public List<TbCommodity> selectXiebao();

	public List<TbCommodity> selectBikan();

	public List<TbCommodity> selectShangxin();

	public List<TbCommodity> selectMeizhuang();
}