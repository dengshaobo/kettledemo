package cn.com.siemens.trm.entities;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class TransState implements Serializable {
    private int id;
    private String transName;
    private String state;
    private Date triggerTime;
}
