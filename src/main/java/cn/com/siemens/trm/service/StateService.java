package cn.com.siemens.trm.service;

import cn.com.siemens.trm.entities.JobState;
import cn.com.siemens.trm.entities.TransState;

public interface StateService {
    TransState getTransState(String transName);
    JobState getJobState(String jobName);
}
