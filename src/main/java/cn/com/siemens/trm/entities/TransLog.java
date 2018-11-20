package cn.com.siemens.trm.entities;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class TransLog implements Serializable {
    private int id_batch;
    private String channel_id;
    private String transName;
    private String status;
    private int lines_read;
    private int lines_written;
    private int lines_updated;
    private int lines_input;
    private int lines_output;
    private int errors;
    private Date startdate;
    private Date enddate;
    private Date logdate;
    private Date depdate;
    private Date replaydate;
    private String log_field;

}
