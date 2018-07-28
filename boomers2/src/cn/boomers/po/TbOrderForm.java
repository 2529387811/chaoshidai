package cn.boomers.po;

import java.math.BigDecimal;
import java.util.Date;

public class TbOrderForm {
    private Integer ofid;

    private Integer userid;

    private Integer comid;

    private String raddress;

    private String spdate;

    private BigDecimal cprice;

    private Date senddate;
    
    private String orderstatus;
    
    private String ordercount;
    
    private String orderphone;
    
    private String ordercons;
    
    

    public String getOrdercount() {
		return ordercount;
	}

	public void setOrdercount(String ordercount) {
		this.ordercount = ordercount;
	}

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
        this.raddress = raddress == null ? null : raddress.trim();
    }

    public String getSpdate() {
        return spdate;
    }

    public void setSpdate(String spdate) {
        this.spdate = spdate == null ? null : spdate.trim();
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
}