package cn.com.siemens.trm.service;

import org.pentaho.di.job.JobMeta;

/**
 *
 */
public interface JobService {
    JobMeta generateJobWithShellScripts(String jobName);
    JobMeta generateJobWithTableInputOutputTrans(String jobName);
    JobMeta generateArchiveJobWithKjbFile(String filename);
    JobMeta generateShellJobWithKjbFile(String filename);

}
