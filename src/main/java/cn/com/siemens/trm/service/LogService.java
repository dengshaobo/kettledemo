package cn.com.siemens.trm.service;

import cn.com.siemens.trm.entities.JobEntryLog;
import cn.com.siemens.trm.entities.JobLog;
import cn.com.siemens.trm.entities.StepLog;
import cn.com.siemens.trm.entities.TransLog;

public interface LogService {
    JobEntryLog getJobEntryLog(String stepName);
    JobLog getJobLog(String jobName);
    TransLog getTransLog(String transName);
    StepLog getStepLog(String transName, String stepName);
}
