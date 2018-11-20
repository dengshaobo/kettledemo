package cn.com.siemens.trm.entities;


import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class JobState implements Serializable {
    private int id;
    private String jobName;
    private String state;
    private Date triggerTime;
}
