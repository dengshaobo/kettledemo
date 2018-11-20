package cn.com.siemens.trm.config;

import cn.com.siemens.trm.job.CustomizedJob;
import cn.com.siemens.trm.service.JobService;
import cn.com.siemens.trm.service.impl.JobServiceImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
public class JobConfig {

    @Bean(name = "customizedJob")
    public CustomizedJob getCustomizedJob() {
        return new CustomizedJob();
    }

    @Bean(name = "jobService")
    public JobService getJobServiceImpl() {
        return new JobServiceImpl();
    }
}
