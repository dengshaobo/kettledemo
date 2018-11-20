package cn.com.siemens.trm.entities;

import org.pentaho.di.core.exception.KettleXMLException;

import java.io.Serializable;
import java.util.Date;

public class JobMeta implements Serializable {
    private int id_job;
    private int id_directory;
    private String name;
    private String description;
    private String extended_description;
    private String job_version;
    private int job_status;
    private int id_database_log;
    private String table_name_log;
    private String created_user;
    private Date created_date;
    private String modified_user;
    private Date modified_date;
    private int user_batch_id;
    private int pass_batch_id;
    private int use_logfield;
    private String shard_file;

    public JobMeta(String xml) {
        try {
            new org.pentaho.di.job.JobMeta(xml, null);
        } catch (KettleXMLException e) {
            e.printStackTrace();
        }
    }

    public int getId_job() {
        return id_job;
    }

    public void setId_job(int id_job) {
        this.id_job = id_job;
    }

    public int getId_directory() {
        return id_directory;
    }

    public void setId_directory(int id_directory) {
        this.id_directory = id_directory;
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

    public String getExtended_description() {
        return extended_description;
    }

    public void setExtended_description(String extended_description) {
        this.extended_description = extended_description;
    }

    public String getJob_version() {
        return job_version;
    }

    public void setJob_version(String job_version) {
        this.job_version = job_version;
    }

    public int getJob_status() {
        return job_status;
    }

    public void setJob_status(int job_status) {
        this.job_status = job_status;
    }

    public int getId_database_log() {
        return id_database_log;
    }

    public void setId_database_log(int id_database_log) {
        this.id_database_log = id_database_log;
    }

    public String getTable_name_log() {
        return table_name_log;
    }

    public void setTable_name_log(String table_name_log) {
        this.table_name_log = table_name_log;
    }

    public String getCreated_user() {
        return created_user;
    }

    public void setCreated_user(String created_user) {
        this.created_user = created_user;
    }

    public Date getCreated_date() {
        return created_date;
    }

    public void setCreated_date(Date created_date) {
        this.created_date = created_date;
    }

    public String getModified_user() {
        return modified_user;
    }

    public void setModified_user(String modified_user) {
        this.modified_user = modified_user;
    }

    public Date getModified_date() {
        return modified_date;
    }

    public void setModified_date(Date modified_date) {
        this.modified_date = modified_date;
    }

    public int getUser_batch_id() {
        return user_batch_id;
    }

    public void setUser_batch_id(int user_batch_id) {
        this.user_batch_id = user_batch_id;
    }

    public int getPass_batch_id() {
        return pass_batch_id;
    }

    public void setPass_batch_id(int pass_batch_id) {
        this.pass_batch_id = pass_batch_id;
    }

    public int getUse_logfield() {
        return use_logfield;
    }

    public void setUse_logfield(int use_logfield) {
        this.use_logfield = use_logfield;
    }

    public String getShard_file() {
        return shard_file;
    }

    public void setShard_file(String shard_file) {
        this.shard_file = shard_file;
    }
}
