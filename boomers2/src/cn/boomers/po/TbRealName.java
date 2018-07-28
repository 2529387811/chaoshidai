package cn.boomers.po;

import java.util.Date;

public class TbRealName {
    private Integer realid;
    
    private Integer userid;
    
    private String name;
    
    private String idcardno;
    
    private String verificationstatus;

	public Integer getRealid() {
		return realid;
	}

	public void setRealid(Integer realid) {
		this.realid = realid;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIdcardno() {
		return idcardno;
	}

	public void setIdcardno(String idcardno) {
		this.idcardno = idcardno;
	}

	public String getVerificationstatus() {
		return verificationstatus;
	}

	public void setVerificationstatus(String verificationstatus) {
		this.verificationstatus = verificationstatus;
	}
    
    
}