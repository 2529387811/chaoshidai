package cn.boomers.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.boomers.po.TbCollect;
import cn.boomers.po.TbCommodity;

public interface Collect {
	public void insertCollect(int id);
	public int SelectIdCollect(int id);
	public List<TbCommodity> selectCollect(@Param("pageindex")int pageindex);
	public int CountCollect();
	public List<TbCommodity> selectCount();
	public List<TbCommodity> selectTypeid(@Param("pageindex")int pageindex,@Param("CTypeId")int typeid);
	public List<TbCommodity> selectOrderByd(int typeid);
	public List<TbCommodity> selectOrderByi(int typeid);
	public List<TbCommodity> CountOrderBy(int typeid);
	public int CountAll(int typeid);
	public List<TbCommodity> LunBo(int typeid);
}
