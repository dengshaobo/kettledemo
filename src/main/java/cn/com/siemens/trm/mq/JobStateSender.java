package cn.com.siemens.trm.mq;

import cn.com.siemens.trm.entities.JobLog;
import cn.com.siemens.trm.entities.JobState;
import cn.com.siemens.trm.service.LogService;
import cn.com.siemens.trm.service.StateService;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class JobStateSender {

    @Autowired
    private AmqpTemplate rabbitTemplate;

    @Autowired
    private StateService stateService;

    public void send(String projectName, String jobName) {
        JobState jobState = stateService.getJobState(projectName + "/" + jobName);
        this.rabbitTemplate.convertAndSend("jobStatusQueue", jobState);
    }
}
