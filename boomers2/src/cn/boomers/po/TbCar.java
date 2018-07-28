package cn.boomers.po;

import java.math.BigDecimal;
import java.util.Date;

public class TbCar {
    private Integer carid;

    private Integer userid;

    private Integer comid;

    private Date ordertime;

    private BigDecimal cprice;

    private Integer usercheck;

    private BigDecimal orderprice;
    
    private String ordercount;

    public Integer getCarid() {
        return carid;
    }

    public void setCarid(Integer carid) {
        this.carid = carid;
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

    public Date getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }

    public BigDecimal getCprice() {
        return cprice;
    }

    public void setCprice(BigDecimal cprice) {
        this.cprice = cprice;
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