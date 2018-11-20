package cn.com.siemens.trm.dao;

import cn.com.siemens.trm.entities.JobEntryLog;
import cn.com.siemens.trm.entities.JobLog;
import cn.com.siemens.trm.entities.StepLog;
import cn.com.siemens.trm.entities.TransLog;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface LogServiceDao {
    JobEntryLog getJobEntryLog(@Param("stepName") String stepName);

    JobLog getJobLog(@Param("jobName") String jobName);

    TransLog getTransLog(@Param("transName") String transName);

    StepLog getStepLog(@Param("transName") String transName, @Param("stepName") String stepName);

}
