package cn.com.siemens.trm.utils;

import cn.com.siemens.trm.config.JobConfig;
import cn.com.siemens.trm.config.RepositoryConfig;
import cn.com.siemens.trm.service.JobService;
import cn.com.siemens.trm.service.RepositoryService;
import cn.com.siemens.trm.service.impl.JobServiceImpl;
import cn.com.siemens.trm.service.impl.RepositoryServiceImpl;
import org.pentaho.di.core.KettleEnvironment;
import org.pentaho.di.core.database.DatabaseMeta;
import org.pentaho.di.core.exception.KettleException;
import org.pentaho.di.core.logging.LogLevel;
import org.pentaho.di.job.JobMeta;
import org.pentaho.di.repository.Repository;
import org.pentaho.di.repository.kdr.KettleDatabaseRepository;
import org.pentaho.di.repository.kdr.KettleDatabaseRepositoryMeta;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


/**
 * job utility to the customized job
 */

public class JobUtils {

    public static void main(String[] args) throws KettleException {
        ApplicationContext context = new AnnotationConfigApplicationContext(JobConfig.class, RepositoryConfig.class);
        JobService jobService = context.getBean("jobService", JobService.class);
//        RepositoryService repositoryService = context.getBean("repositoryService", RepositoryService.class);
//        JobMeta jobMeta = jobService.generateShellJobWithKjbFile("etl/trm_spark.kjb");
        JobMeta jobMeta = jobService .generateArchiveJobWithKjbFile("etl/trm_archive.kjb");
        jobMeta.setName("trm/trm_archive_test3");
//        deleteJob("trm_spark");
        exec(jobMeta);
//        repositoryService.saveJobIntoDBRepository(jobMeta);

    }

    public static JobMeta generateJobWithShellScripts(String jobName) {
        ApplicationContext context = new AnnotationConfigApplicationContext(JobConfig.class);
        JobService jobService = context.getBean("jobService", JobServiceImpl.class);
        return jobService.generateJobWithShellScripts(jobName);
    }

    public static JobMeta generateShellJobWithKjbFile(String fileName) {
        ApplicationContext context = new AnnotationConfigApplicationContext(JobConfig.class);
        JobService jobService = context.getBean("jobService", JobService.class);
        return jobService.generateShellJobWithKjbFile(fileName);
    }


    public static void exec(JobMeta jobMeta) throws KettleException {
        Repository repository = new KettleDatabaseRepository();
        KettleDatabaseRepositoryMeta repositoryMeta =  getRepositoryMeta();

        repository.init(repositoryMeta);
        org.pentaho.di.job.Job job = new org.pentaho.di.job.Job(repository, jobMeta);
        job.setLogLevel(LogLevel.BASIC);
        job.start();
        job.waitUntilFinished();
        if (job.getErrors() != 0) {
            System.out.println("Job execution fail!");
        } else {
            System.out.println("Job execution success!");
        }
    }

    private static KettleDatabaseRepositoryMeta getRepositoryMeta() {
        {

            DatabaseMeta repoDatabase = null;
            try {
                KettleEnvironment.init();
                repoDatabase = new DatabaseMeta(DBRepoUtils.repoDatabaseXML);
            } catch (KettleException e) {
                e.printStackTrace();
            }

            if (repoDatabase != null) {
                repoDatabase.setSupportsBooleanDataType(true);
            }
            return new KettleDatabaseRepositoryMeta("","","", repoDatabase);
        }
    }

    public static void deleteAllJob() {
        ApplicationContext context = new AnnotationConfigApplicationContext(RepositoryConfig.class);
        RepositoryService repositoryService = context.getBean("repositoryService", RepositoryServiceImpl.class);
        repositoryService.deleteAllJobDBRepository();
    }

    public static void deleteJob(String jobName) {
        ApplicationContext context = new AnnotationConfigApplicationContext(RepositoryConfig.class);
        RepositoryService repositoryService = context.getBean("repositoryService", RepositoryServiceImpl.class);
        repositoryService.deleteJobFromDBRepository(jobName);
    }

    public static void saveJob(JobMeta jobMeta) {
        ApplicationContext context = new AnnotationConfigApplicationContext(RepositoryConfig.class);
        RepositoryService repositoryService = context.getBean("repositoryService", RepositoryServiceImpl.class);
        repositoryService.saveJobIntoDBRepository(jobMeta);
    }

    public static JobMeta loadJob(String jobName) {
        ApplicationContext context = new AnnotationConfigApplicationContext(RepositoryConfig.class);
        RepositoryService repositoryService = context.getBean("repositoryService", RepositoryServiceImpl.class);
        return repositoryService.loadJobFromDBRepository(jobName);
    }

}
