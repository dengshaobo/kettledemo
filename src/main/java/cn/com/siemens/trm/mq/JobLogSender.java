package cn.com.siemens.trm.mq;

import cn.com.siemens.trm.entities.JobLog;
import cn.com.siemens.trm.service.LogService;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class JobLogSender {

    @Autowired
    private AmqpTemplate rabbitTemplate;

    @Autowired
    private LogService logService;

    public void send(String projectName, String jobName) {
        JobLog jobLog = logService.getJobLog(projectName + "/" + jobName);

        this.rabbitTemplate.convertAndSend("jobLogQueue", jobLog);
    }
}
