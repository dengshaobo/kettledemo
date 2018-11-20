package cn.com.siemens.trm.entities;

public class JobEntryAttribute {
    private int id_jobentry_attribute;
    private int id_job;
    private int id_jobentry;
    private int nr;
    private String code;
    private double value_num;
    private String value_str;

    public int getId_jobentry_attribute() {
        return id_jobentry_attribute;
    }

    public void setId_jobentry_attribute(int id_jobentry_attribute) {
        this.id_jobentry_attribute = id_jobentry_attribute;
    }

    public int getId_job() {
        return id_job;
    }

    public void setId_job(int id_job) {
        this.id_job = id_job;
    }

    public int getId_jobentry() {
        return id_jobentry;
    }

    public void setId_jobentry(int id_jobentry) {
        this.id_jobentry = id_jobentry;
    }

    public int getNr() {
        return nr;
    }

    public void setNr(int nr) {
        this.nr = nr;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public double getValue_num() {
        return value_num;
    }

    public void setValue_num(double value_num) {
        this.value_num = value_num;
    }

    public String getValue_str() {
        return value_str;
    }

    public void setValue_str(String value_str) {
        this.value_str = value_str;
    }

}
