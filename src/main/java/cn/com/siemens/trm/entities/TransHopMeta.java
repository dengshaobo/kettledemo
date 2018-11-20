package cn.com.siemens.trm.entities;

public class TransHopMeta {
    private int id_trans_hop;
    private int id_transformation;
    private int id_step_from;
    private int id_step_to;
    private int enabled;

    public int getId_trans_hop() {
        return id_trans_hop;
    }

    public void setId_trans_hop(int id_trans_hop) {
        this.id_trans_hop = id_trans_hop;
    }

    public int getId_transformation() {
        return id_transformation;
    }

    public void setId_transformation(int id_transformation) {
        this.id_transformation = id_transformation;
    }

    public int getId_step_from() {
        return id_step_from;
    }

    public void setId_step_from(int id_step_from) {
        this.id_step_from = id_step_from;
    }

    public int getId_step_to() {
        return id_step_to;
    }

    public void setId_step_to(int id_step_to) {
        this.id_step_to = id_step_to;
    }

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }
}
