package cn.com.siemens.trm.entities;

import org.pentaho.di.core.exception.KettleException;
import org.pentaho.di.core.exception.KettleMissingPluginsException;
import org.pentaho.di.core.exception.KettleXMLException;

import java.io.Serializable;
import java.util.Date;

public class TransMeta implements Serializable {
    private int id_transformation;
    private int id_directory;
    private String name;
    private String description;
    private String extended_description;
    private String trans_version;
    private int trans_status;
    private int id_step_read;
    private int id_step_write;
    private int id_step_input;
    private int id_step_output;
    private int id_database_log;
    private String table_name_log;
    private int user_batchid;
    private int uer_logfield;
    private int id_database_maxdate;
    private String table_name_maxdate;
    private String field_name_maxdate;
    private double offset_maxdate;
    private double diff_maxdate;
    private String created_user;
    private Date created_date;
    private String modified_user;
    private Date modified_date;
    private int size_rowset;

    public TransMeta(String xml) {
        try {
            new org.pentaho.di.trans.TransMeta(xml);
        } catch (KettleException e) {
            e.printStackTrace();
        }
    }

    public int getId_transformation() {
        return id_transformation;
    }

    public void setId_transformation(int id_transformation) {
        this.id_transformation = id_transformation;
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

    public String getTrans_version() {
        return trans_version;
    }

    public void setTrans_version(String trans_version) {
        this.trans_version = trans_version;
    }

    public int getTrans_status() {
        return trans_status;
    }

    public void setTrans_status(int trans_status) {
        this.trans_status = trans_status;
    }

    public int getId_step_read() {
        return id_step_read;
    }

    public void setId_step_read(int id_step_read) {
        this.id_step_read = id_step_read;
    }

    public int getId_step_write() {
        return id_step_write;
    }

    public void setId_step_write(int id_step_write) {
        this.id_step_write = id_step_write;
    }

    public int getId_step_input() {
        return id_step_input;
    }

    public void setId_step_input(int id_step_input) {
        this.id_step_input = id_step_input;
    }

    public int getId_step_output() {
        return id_step_output;
    }

    public void setId_step_output(int id_step_output) {
        this.id_step_output = id_step_output;
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

    public int getUser_batchid() {
        return user_batchid;
    }

    public void setUser_batchid(int user_batchid) {
        this.user_batchid = user_batchid;
    }

    public int getUer_logfield() {
        return uer_logfield;
    }

    public void setUer_logfield(int uer_logfield) {
        this.uer_logfield = uer_logfield;
    }

    public int getId_database_maxdate() {
        return id_database_maxdate;
    }

    public void setId_database_maxdate(int id_database_maxdate) {
        this.id_database_maxdate = id_database_maxdate;
    }

    public String getTable_name_maxdate() {
        return table_name_maxdate;
    }

    public void setTable_name_maxdate(String table_name_maxdate) {
        this.table_name_maxdate = table_name_maxdate;
    }

    public String getField_name_maxdate() {
        return field_name_maxdate;
    }

    public void setField_name_maxdate(String field_name_maxdate) {
        this.field_name_maxdate = field_name_maxdate;
    }

    public double getOffset_maxdate() {
        return offset_maxdate;
    }

    public void setOffset_maxdate(double offset_maxdate) {
        this.offset_maxdate = offset_maxdate;
    }

    public double getDiff_maxdate() {
        return diff_maxdate;
    }

    public void setDiff_maxdate(double diff_maxdate) {
        this.diff_maxdate = diff_maxdate;
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

    public int getSize_rowset() {
        return size_rowset;
    }

    public void setSize_rowset(int size_rowset) {
        this.size_rowset = size_rowset;
    }
}
