package cn.com.siemens.trm.mq;

import cn.com.siemens.trm.entities.TransState;
import cn.com.siemens.trm.service.StateService;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class TransStateSender {

    @Autowired
    private AmqpTemplate rabbitTemplate;

    @Autowired
    private StateService stateService;

    public void send(String projectName, String transName) {
        TransState transState = stateService.getTransState(projectName + "/" + transName);
        this.rabbitTemplate.convertAndSend("transStatusQueue", transState);
    }
}
