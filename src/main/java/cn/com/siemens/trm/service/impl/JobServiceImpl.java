package cn.com.siemens.trm.service.impl;

import cn.com.siemens.trm.config.JobConfig;
import cn.com.siemens.trm.config.RepositoryConfig;
import cn.com.siemens.trm.job.CustomizedJob;
import cn.com.siemens.trm.service.JobService;
import cn.com.siemens.trm.service.RepositoryService;
import org.pentaho.di.job.JobMeta;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Service;

/**
 * Generate job with three shell scripts each one calls spark job
 *
 * @author fanyang
 */

@Service
public class JobServiceImpl implements JobService {

    @Override
    public JobMeta generateJobWithShellScripts(String jobName) {
        ApplicationContext context = new AnnotationConfigApplicationContext(JobConfig.class);
        CustomizedJob customizedJob = context.getBean("customizedJob", CustomizedJob.class);
        return customizedJob.jobWithShellScripts(jobName);
    }

    @Override
    public JobMeta generateJobWithTableInputOutputTrans(String jobName) {
        ApplicationContext context = new AnnotationConfigApplicationContext(JobConfig.class);
        CustomizedJob customizedJob = context.getBean("customizedJob", CustomizedJob.class);
        return customizedJob.generateJobWithTableInputOutputTrans(jobName);
    }

    @Override
    public JobMeta generateArchiveJobWithKjbFile(String filename) {
        ApplicationContext context = new AnnotationConfigApplicationContext(JobConfig.class);
        CustomizedJob customizedJob = context.getBean("customizedJob", CustomizedJob.class);
        return customizedJob.generateArchiveJobWithKjbFile(filename);
    }

    @Override
    public JobMeta generateShellJobWithKjbFile(String filename) {
        ApplicationContext context = new AnnotationConfigApplicationContext(JobConfig.class);
        CustomizedJob customizedJob = context.getBean("customizedJob", CustomizedJob.class);
        return customizedJob.generateShellJobWithKjbFile(filename);
    }
}
