package cn.com.siemens.trm.mq;

import cn.com.siemens.trm.entities.TransLog;
import cn.com.siemens.trm.service.LogService;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class TransLogSender {

    @Autowired
    private AmqpTemplate rabbitTemplate;

    @Autowired
    private LogService logService;

    public void send(String projectName, String transName) {
        TransLog transLog = logService.getTransLog(projectName + "/" + transName);
        this.rabbitTemplate.convertAndSend("transLogQueue", transLog);
    }
}
