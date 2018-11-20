package cn.com.siemens.trm.dao;

import cn.com.siemens.trm.entities.JobState;
import cn.com.siemens.trm.entities.TransState;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface StateServiceDao {
    JobState getJobState(@Param("jobName") String jobName);

    TransState getTransState(@Param("transName") String transName);
}
