package cn.com.siemens.trm.entities;

public class JobEntryMeta {
    private int id_jobentry;
    private int id_job;
    private int id_jobentry_type;
    private String name;
    private String description;

    public int getId_jobentry() {
        return id_jobentry;
    }

    public void setId_jobentry(int id_jobentry) {
        this.id_jobentry = id_jobentry;
    }

    public int getId_job() {
        return id_job;
    }

    public void setId_job(int id_job) {
        this.id_job = id_job;
    }

    public int getId_jobentry_type() {
        return id_jobentry_type;
    }

    public void setId_jobentry_type(int id_jobentry_type) {
        this.id_jobentry_type = id_jobentry_type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
