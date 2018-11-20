package cn.com.siemens.trm.controller;

import cn.com.siemens.trm.mq.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rabbitmq")
public class RabbitmqController {


    @Autowired
    private JobLogSender jobLogSender;

    @Autowired
    private TransLogSender transLogSender;

    @Autowired
    private JobStateSender jobStateSender;

    @Autowired
    private TransStateSender transStateSender;

    @RequestMapping(value = "/{projectName}/log/job/{jobName}", method = RequestMethod.GET)
    public void jobLog(@PathVariable String projectName, @PathVariable String jobName) {
        jobLogSender.send(projectName, jobName);
    }

    @RequestMapping(value = "/{projectName}/log/trans/{transName}", method = RequestMethod.GET)
    public void transLog(@PathVariable String projectName, @PathVariable String transName) {
        transLogSender.send(projectName, transName);
    }

    @RequestMapping(value = "/{projectName}/status/job/{jobName}", method = RequestMethod.GET)
    public void jobStatus(@PathVariable String projectName, @PathVariable String jobName) {
        jobStateSender.send(projectName, jobName);
    }

    @RequestMapping(value = "/{projectName}/status/trans/{transName}", method = RequestMethod.GET)
    public void transStatus(@PathVariable String projectName, @PathVariable String transName) {
        transStateSender.send(projectName, transName);
    }

}
