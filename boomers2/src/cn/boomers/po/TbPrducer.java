package cn.boomers.po;

public class TbPrducer {
    private Integer producerid;

    private String proname;

    private String proaddress;

    private Integer prophone;

    public Integer getProducerid() {
        return producerid;
    }

    public void setProducerid(Integer producerid) {
        this.producerid = producerid;
    }

    public String getProname() {
        return proname;
    }

    public void setProname(String proname) {
        this.proname = proname == null ? null : proname.trim();
    }

    public String getProaddress() {
        return proaddress;
    }

    public void setProaddress(String proaddress) {
        this.proaddress = proaddress == null ? null : proaddress.trim();
    }

    public Integer getProphone() {
        return prophone;
    }

    public void setProphone(Integer prophone) {
        this.prophone = prophone;
    }
}