package cn.com.siemens.trm.service.impl;

import cn.com.siemens.trm.annotation.TargetDataSource;
import cn.com.siemens.trm.commons.DatabaseType;
import cn.com.siemens.trm.dao.StateServiceDao;
import cn.com.siemens.trm.entities.JobState;
import cn.com.siemens.trm.entities.TransState;
import cn.com.siemens.trm.service.StateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StateServiceImpl implements StateService {

    @Autowired
    private StateServiceDao stateServiceDao;


    @Override
    @TargetDataSource(type = DatabaseType.TRM)
    public TransState getTransState(String transName) {
        return stateServiceDao.getTransState(transName);
    }

    @Override
    @TargetDataSource(type = DatabaseType.TRM)
    public JobState getJobState(String jobName) {
        return stateServiceDao.getJobState(jobName);
    }
}
