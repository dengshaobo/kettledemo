package cn.com.siemens.trm.entities;

public class TransAttribute {
    private int id_trans_attribute;
    private int id_transformation;
    private int nr;
    private String code;
    private int value_num;
    private String value_str;

    public int getId_trans_attribute() {
        return id_trans_attribute;
    }

    public void setId_trans_attribute(int id_trans_attribute) {
        this.id_trans_attribute = id_trans_attribute;
    }

    public int getId_transformation() {
        return id_transformation;
    }

    public void setId_transformation(int id_transformation) {
        this.id_transformation = id_transformation;
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

    public int getValue_num() {
        return value_num;
    }

    public void setValue_num(int value_num) {
        this.value_num = value_num;
    }

    public String getValue_str() {
        return value_str;
    }

    public void setValue_str(String value_str) {
        this.value_str = value_str;
    }
}
