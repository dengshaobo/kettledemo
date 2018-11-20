package cn.com.siemens.trm.controller;

import cn.com.siemens.trm.entities.JobEntryLog;
import cn.com.siemens.trm.entities.JobLog;
import cn.com.siemens.trm.entities.StepLog;
import cn.com.siemens.trm.entities.TransLog;
import cn.com.siemens.trm.service.LogService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class LogServiceController {

    @Resource
    private LogService logService;

    @RequestMapping(value = "/log/jobentrylog/{stepName}", method = RequestMethod.GET)
    public String jobEntryLog(@PathVariable String stepName) {
        JobEntryLog jobEntryLog = logService.getJobEntryLog(stepName);
        return JSONObject.toJSONString(jobEntryLog);
    }

    @RequestMapping(value = "/log/joblog/{jobName}", method = RequestMethod.GET)
    public String joblog(@PathVariable String jobName) {
        JobLog jobLog = logService.getJobLog(jobName);
        return JSONObject.toJSONString(jobLog);
    }

    @RequestMapping(value = "/log/translog/{transName}", method = RequestMethod.GET)
    public String translog(@PathVariable String transName) {
        TransLog transLog = logService.getTransLog(transName);
        return JSONObject.toJSONString(transLog);
    }

    @RequestMapping("/log/steplog/{transName}/{stepName}")
    public String steplog(@PathVariable String transName, @PathVariable String stepName) {
        StepLog stepLog = logService.getStepLog(transName, stepName);
        return JSONObject.toJSONString(stepLog);
    }
}
