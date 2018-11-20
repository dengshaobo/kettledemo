package cn.com.siemens.trm.entities;

public class JobHopMeta {
    private int id_job_hop;
    private int id_job;
    private int id_jobentry_copy_from;
    private int id_jobentry_copy_to;
    private int enabled;
    private int evaluation;
    private int unconditional;

    public int getId_job_hop() {
        return id_job_hop;
    }

    public void setId_job_hop(int id_job_hop) {
        this.id_job_hop = id_job_hop;
    }

    public int getId_job() {
        return id_job;
    }

    public void setId_job(int id_job) {
        this.id_job = id_job;
    }

    public int getId_jobentry_copy_from() {
        return id_jobentry_copy_from;
    }

    public void setId_jobentry_copy_from(int id_jobentry_copy_from) {
        this.id_jobentry_copy_from = id_jobentry_copy_from;
    }

    public int getId_jobentry_copy_to() {
        return id_jobentry_copy_to;
    }

    public void setId_jobentry_copy_to(int id_jobentry_copy_to) {
        this.id_jobentry_copy_to = id_jobentry_copy_to;
    }

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }

    public int getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(int evaluation) {
        this.evaluation = evaluation;
    }

    public int getUnconditional() {
        return unconditional;
    }

    public void setUnconditional(int unconditional) {
        this.unconditional = unconditional;
    }
}
