package cn.com.siemens.trm.entities;

import lombok.Data;

import java.util.Date;

@Data
public class StepLog {
    private int id_batch;
    private String channel_id;
    private Date log_date;
    private String transname;
    private String stepname;
    private int step_copy;
    private int lines_read;
    private int lines_written;
    private int lines_updated;
    private int lines_input;
    private int lines_output;
    private int lines_rejected;
    private int errors;
    private String log_field;

}
