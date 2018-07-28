package cn.boomers.po;

public class TbTrademarkSpend {
    private Integer brandid;

    private String brandname;

    private String brandimg;

    public Integer getBrandid() {
        return brandid;
    }

    public void setBrandid(Integer brandid) {
        this.brandid = brandid;
    }

    public String getBrandname() {
        return brandname;
    }

    public void setBrandname(String brandname) {
        this.brandname = brandname == null ? null : brandname.trim();
    }

    public String getBrandimg() {
        return brandimg;
    }

    public void setBrandimg(String brandimg) {
        this.brandimg = brandimg == null ? null : brandimg.trim();
    }
}