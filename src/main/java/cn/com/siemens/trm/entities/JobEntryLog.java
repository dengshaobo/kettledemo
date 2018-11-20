package cn.com.siemens.trm.entities;

import java.io.Serializable;
import java.util.Date;

public class JobEntryLog implements Serializable {
    private int id_batch;
    private String channel_id;
    private Date log_date;
    private String transname;
    private String stepname;
    private int lines_read;
    private int lines_written;
    private int lines_updated;
    private int lines_input;
    private int lines_output;
    private int lines_rejected;
    private int errors;
    private char result;
    private int nr_result_rows;
    private int nr_result_files;
    private String log_field;

    public int getId_batch() {
        return id_batch;
    }

    public void setId_batch(int id_batch) {
        this.id_batch = id_batch;
    }

    public String getChannel_id() {
        return channel_id;
    }

    public void setChannel_id(String channel_id) {
        this.channel_id = channel_id;
    }

    public Date getLog_date() {
        return log_date;
    }

    public void setLog_date(Date log_date) {
        this.log_date = log_date;
    }

    public String getTransname() {
        return transname;
    }

    public void setTransName(String transname) {
        this.transname = transname;
    }

    public String getStepname() {
        return stepname;
    }

    public void setStepName(String stepname) {
        this.stepname = stepname;
    }

    public int getLines_read() {
        return lines_read;
    }

    public void setLines_read(int lines_read) {
        this.lines_read = lines_read;
    }

    public int getLines_written() {
        return lines_written;
    }

    public void setLines_written(int lines_written) {
        this.lines_written = lines_written;
    }

    public int getLines_updated() {
        return lines_updated;
    }

    public void setLines_updated(int lines_updated) {
        this.lines_updated = lines_updated;
    }

    public int getLines_input() {
        return lines_input;
    }

    public void setLines_input(int lines_input) {
        this.lines_input = lines_input;
    }

    public int getLines_output() {
        return lines_output;
    }

    public void setLines_output(int lines_output) {
        this.lines_output = lines_output;
    }

    public int getLines_rejected() {
        return lines_rejected;
    }

    public void setLines_rejected(int lines_rejected) {
        this.lines_rejected = lines_rejected;
    }

    public int getErrors() {
        return errors;
    }

    public void setErrors(int errors) {
        this.errors = errors;
    }

    public char getResult() {
        return result;
    }

    public void setResult(char result) {
        this.result = result;
    }

    public int getNr_result_rows() {
        return nr_result_rows;
    }

    public void setNr_result_rows(int nr_result_rows) {
        this.nr_result_rows = nr_result_rows;
    }

    public int getNr_result_files() {
        return nr_result_files;
    }

    public void setNr_result_files(int nr_result_files) {
        this.nr_result_files = nr_result_files;
    }

    public String getLog_field() {
        return log_field;
    }

    public void setLog_field(String log_field) {
        this.log_field = log_field;
    }
}
