package cn.com.siemens.trm.service.impl;

import cn.com.siemens.trm.annotation.TargetDataSource;
import cn.com.siemens.trm.commons.DatabaseType;
import cn.com.siemens.trm.dao.LogServiceDao;
import cn.com.siemens.trm.entities.JobEntryLog;
import cn.com.siemens.trm.entities.JobLog;
import cn.com.siemens.trm.entities.StepLog;
import cn.com.siemens.trm.entities.TransLog;
import cn.com.siemens.trm.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogServiceImpl implements LogService {

    @Autowired
    private LogServiceDao logServiceDao;

    @Override
    @TargetDataSource(type = DatabaseType.TRM)
    public JobEntryLog getJobEntryLog(String stepName) {
        return logServiceDao.getJobEntryLog(stepName);
    }

    @Override
    @TargetDataSource(type = DatabaseType.TRM)
    public JobLog getJobLog(String jobName) {
        return logServiceDao.getJobLog(jobName);
    }

    @Override
    public TransLog getTransLog(String transName) {
        return logServiceDao.getTransLog(transName);
    }

    @Override
    @TargetDataSource(type = DatabaseType.TRM)
    public StepLog getStepLog(String transName, String stepName) {
        return logServiceDao.getStepLog(transName, stepName);
    }
}
