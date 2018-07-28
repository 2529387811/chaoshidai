package cn.boomers.po;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class TbOrderFormCustom{
	private List<Integer> comids;
	
	private Integer ofid;

    private Integer userid;

    private Integer comid;

    private String raddress;

    private String spdate;

    private BigDecimal cprice;

    private Date senddate;
    
    private String cname;

    private String ctypeid;

    private String cimage;

    private Integer ccount;

    private String cintro;
    
    private Integer carid;

    private Date ordertime;

    private Integer usercheck;

    private BigDecimal orderprice;
    
    private String ordercount;
    
    private String orderstatus;
    
    private String orderphone;
    
    private String ordercons;
    
    public String getOrderphone() {
		return orderphone;
	}

	public void setOrderphone(String orderphone) {
		this.orderphone = orderphone;
	}

	public String getOrdercons() {
		return ordercons;
	}

	public void setOrdercons(String ordercons) {
		this.ordercons = ordercons;
	}

	public String getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}
    
	public List<Integer> getComids() {
		return comids;
	}

	public void setComids(List<Integer> comids) {
		this.comids = comids;
	}

	public Integer getOfid() {
		return ofid;
	}

	public void setOfid(Integer ofid) {
		this.ofid = ofid;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Integer getComid() {
		return comid;
	}

	public void setComid(Integer comid) {
		this.comid = comid;
	}

	public String getRaddress() {
		return raddress;
	}

	public void setRaddress(String raddress) {
		this.raddress = raddress;
	}

	public String getSpdate() {
		return spdate;
	}

	public void setSpdate(String spdate) {
		this.spdate = spdate;
	}

	public BigDecimal getCprice() {
		return cprice;
	}

	public void setCprice(BigDecimal cprice) {
		this.cprice = cprice;
	}

	public Date getSenddate() {
		return senddate;
	}

	public void setSenddate(Date senddate) {
		this.senddate = senddate;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCtypeid() {
		return ctypeid;
	}

	public void setCtypeid(String ctypeid) {
		this.ctypeid = ctypeid;
	}

	public String getCimage() {
		return cimage;
	}

	public void setCimage(String cimage) {
		this.cimage = cimage;
	}

	public Integer getCcount() {
		return ccount;
	}

	public void setCcount(Integer ccount) {
		this.ccount = ccount;
	}

	public String getCintro() {
		return cintro;
	}

	public void setCintro(String cintro) {
		this.cintro = cintro;
	}

	public Integer getCarid() {
		return carid;
	}

	public void setCarid(Integer carid) {
		this.carid = carid;
	}

	public Date getOrdertime() {
		return ordertime;
	}

	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}

	public Integer getUsercheck() {
		return usercheck;
	}

	public void setUsercheck(Integer usercheck) {
		this.usercheck = usercheck;
	}

	public BigDecimal getOrderprice() {
		return orderprice;
	}

	public void setOrderprice(BigDecimal orderprice) {
		this.orderprice = orderprice;
	}

	public String getOrdercount() {
		return ordercount;
	}

	public void setOrdercount(String ordercount) {
		this.ordercount = ordercount;
	}

	


}