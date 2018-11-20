package cn.com.siemens.trm.impl;

import cn.com.siemens.trm.config.RepositoryConfig;
import cn.com.siemens.trm.service.RepositoryService;
import cn.com.siemens.trm.service.TransService;
import cn.com.siemens.trm.service.impl.RepositoryServiceImpl;
import cn.com.siemens.trm.service.impl.TransServiceImpl;
import cn.com.siemens.trm.utils.JobUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.pentaho.di.job.JobMeta;
import org.pentaho.di.trans.TransMeta;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertEquals;


/**
 * Repository Service Test in Spring
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = RepositoryConfig.class)
public class TestRepositoryServiceImpl {

//    private RepositoryService repositoryService = new RepositoryServiceImpl();

    private ApplicationContext context = new AnnotationConfigApplicationContext(RepositoryConfig.class);
    private RepositoryService repositoryService = context.getBean("repositoryService", RepositoryServiceImpl.class);

//    @Before
//    public void setUp() {
//        try {
//            KettleEnvironment.init();
//        } catch (KettleException e) {
//            e.printStackTrace();
//        }
//    }

    @Test
    public void init() {
        assertEquals(true, repositoryService.init());
    }

    @Test
    public void isConnected() {
        assertEquals(true, repositoryService.isConnected());
    }

    @Test
    public void saveTransIntoDBRepository() {
//        repositoryService.init(DBRepoUtils.repoDatabaseXML);
        TransService transService = new TransServiceImpl();
        TransMeta transMeta = transService.generateTableInputOutputTransMeta("test_trans");
//        repositoryService.saveTransIntoDBRepository(transMeta);
        assertEquals(true, repositoryService.saveTransIntoDBRepository(transMeta));
    }

    @Test
    public void isTransExists() {
        assertEquals(true, repositoryService.isTransExists("test_trans"));
    }

    @Test
    public void deleteTransFromDBRepository() {
//        TransMeta transMeta = repositoryService.loadTransFromDBRepository("test_trans");
        assertEquals(true, repositoryService.deleteTransFromDBRepository("test_trans"));
    }

    @Test
    public void deleteAllTransFromDBRepository() {
        assertEquals(true, repositoryService.deleteAllTransFromDBRepository());
    }

    @Test
    public void loadTransFromDBRepository() {
        TransMeta transMeta = repositoryService.loadTransFromDBRepository("test_trans");
        assertEquals("test_trans", transMeta.getName());
    }

    @Test
    public void loadAllTransFromDBRepository() {
        List<TransMeta> transList = repositoryService.loadAllTransFromDBRepository();
        assertEquals(1, transList.size());
    }

    @Test
    public void saveJobIntoDBRepository() {
//        JobMeta jobMeta = GenerateJob.generateJob("test_job");
        JobMeta jobMeta = JobUtils.generateJobWithShellScripts("test_job");
        assertEquals(true, repositoryService.saveJobIntoDBRepository(jobMeta));
    }

    @Test
    public void isJobExists() {
        assertEquals(true, repositoryService.isJobExists("test_job"));
    }

    //
    @Test
    public void loadJobFromDBRepository() {
        JobMeta jobMeta = repositoryService.loadJobFromDBRepository("test_job");
        assertEquals("test_job", jobMeta.getName());
    }

    @Test
    public void deleteAllJobDBRepository() {
        assertEquals(true, repositoryService.deleteAllJobDBRepository());
    }

    @Test
    public void deleteJobFromDBRepository() {
        assertEquals(true, repositoryService.deleteJobFromDBRepository("etl_job_sparkShell"));
    }

    @Test
    public void loadAllJobFromDBRepository() {
        List<JobMeta> jobList = repositoryService.loadAllJobFromDBRepository();
        assertEquals(1, jobList.size());
    }
}
