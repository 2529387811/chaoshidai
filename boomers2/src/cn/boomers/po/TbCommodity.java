package cn.boomers.po;

import java.math.BigDecimal;

public class TbCommodity {
    private Integer comid;

    private String cname;

    private BigDecimal cprice;

    private String ctypeid;

    private String cimage;

    private Integer ccount;

    private String cintro;

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public BigDecimal getCprice() {
        return cprice;
    }

    public void setCprice(BigDecimal cprice) {
        this.cprice = cprice;
    }

    public String getCtypeid() {
        return ctypeid;
    }

    public void setCtypeid(String ctypeid) {
        this.ctypeid = ctypeid == null ? null : ctypeid.trim();
    }

    public String getCimage() {
        return cimage;
    }

    public void setCimage(String cimage) {
        this.cimage = cimage == null ? null : cimage.trim();
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
        this.cintro = cintro == null ? null : cintro.trim();
    }
}