package cn.com.siemens.trm.service.impl;

import cn.com.siemens.trm.service.RepositoryService;
import cn.com.siemens.trm.utils.DBRepoUtils;
import org.pentaho.di.core.KettleEnvironment;
import org.pentaho.di.core.database.DatabaseMeta;
import org.pentaho.di.core.exception.KettleException;
import org.pentaho.di.job.JobMeta;
import org.pentaho.di.repository.ObjectId;
import org.pentaho.di.repository.RepositoryDirectoryInterface;
import org.pentaho.di.repository.RepositoryElementMetaInterface;
import org.pentaho.di.repository.StringObjectId;
import org.pentaho.di.repository.kdr.KettleDatabaseRepository;
import org.pentaho.di.repository.kdr.KettleDatabaseRepositoryMeta;
import org.pentaho.di.trans.TransMeta;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import static org.pentaho.di.repository.RepositoryObjectType.JOB;
import static org.pentaho.di.repository.RepositoryObjectType.TRANSFORMATION;

/**
 * RepositoryService interface implementation
 *
 * @author fanyang
 */

@Service
public class RepositoryServiceImpl implements RepositoryService {

    private KettleDatabaseRepository repository = new KettleDatabaseRepository();
    private KettleDatabaseRepositoryMeta repositoryMeta = getRepositoryMeta();

    private KettleDatabaseRepositoryMeta getRepositoryMeta() {
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
//        return new KettleDatabaseRepositoryMeta(
//                (String) PropsUtils.getProperty("id"),
//                (String) PropsUtils.getProperty("name"),
//                (String) PropsUtils.getProperty("description"),
//                repoDatabase);
        return new KettleDatabaseRepositoryMeta("trm_repository_on_mysql", "trm_repository_on_mysql", "DatabaseRepository", repoDatabase);
    }

    /**
     * Initialize Database Repository
     *
     * @see DBRepoUtils#repoDatabaseXML
     */
    @Override
    public boolean init() {
        try {
            repository.init(repositoryMeta);
            repository.connect("admin", "admin");
            if (repository.isConnected()) {
                System.out.println("Database RepositoryService Init Success and Connected!");
                return true;
            } else {
                System.out.println("Database RepositoryService Connection Failed!");
                return false;
            }
        } catch (KettleException e) {
            System.out.println("Initialize Fail.");
            System.exit(0);
            return false;
        }
    }

    /**
     * Whether database repository is connected
     */
    @Override
    public boolean isConnected() {
        if (!repository.isConnected()) {
            System.out.println("Repository Not Connected.");
            System.out.println("Try Connecting the Database...");
            init();
        } else {
            System.out.println("Repository is Connected.");
        }
        return true;
    }

    /**
     * Save the transformation to database repository
     *
     * @param transMeta the transformation meta data
     */
    @Override
    public boolean saveTransIntoDBRepository(TransMeta transMeta) {
        isConnected();
        try {
            RepositoryDirectoryInterface directoryInterface = repository.findDirectory("/");
            transMeta.setRepositoryDirectory(directoryInterface);
            if (isTransExists(transMeta.getName())) {
                System.out.println("Please rename the transformation.");
                return false;
            } else {
                repository.save(transMeta, null);
                System.out.println("Save Transformation Success!");
                return true;
            }
        } catch (KettleException e) {
            System.out.println("Save Transformation Fail.");
            return false;
        }
    }

    /**
     * Whether the transformation exists in the database repository
     *
     * @param transName the transformation name
     */
    @Override
    public boolean isTransExists(String transName) {
        isConnected();
        boolean isExists = false;
        try {
            RepositoryDirectoryInterface directoryInterface = repository.loadRepositoryDirectoryTree();
            if (repository.exists(transName, directoryInterface, TRANSFORMATION)) {
                isExists = true;
                System.out.println("Transformation Exists!");
            } else {
                isExists = false;
            }
        } catch (KettleException e) {
            e.printStackTrace();
        }
        return isExists;
    }

    /**
     * Delete the transformation from database repository
     *
     * @param transName the transformation name
     */
    @Override
    public boolean deleteTransFromDBRepository(String transName) {
        isConnected();
        try {
            TransMeta transMeta = loadTransFromDBRepository(transName);
            if (!isTransExists(transName)) {
                System.out.println("There is no such transformation.");
                System.out.println("Transformation delete fail.");
            } else {
                repository.deleteTransformation(transMeta.getObjectId());
                System.out.println("Transformation Delete Success.");
            }
        } catch (KettleException e) {
            System.out.println("Delete Transformation Fail.");
        }

        return true;
    }

    /**
     * Delete all transformation from database repository
     */
    @Override
    public boolean deleteAllTransFromDBRepository() {
        isConnected();
        ObjectId id = new StringObjectId("0");
        try {
            List<RepositoryElementMetaInterface> repositoryElementMetaInterfaces = repository.getTransformationObjects(id, false);
            if (repositoryElementMetaInterfaces == null) {
                System.out.println("There is No Transformation.");
                return false;
            } else {
                for (RepositoryElementMetaInterface reif : repositoryElementMetaInterfaces) {
                    repository.deleteTransformation(reif.getObjectId());
                }
                System.out.println("All transformation delete success.");
                return true;
            }
        } catch (KettleException e) {
            System.out.println("Delete Transformation Fail.");
            return false;
        }
    }

    /**
     * Load the transformation from database repository
     *
     * @param transName the transformation name
     * @return TransMeta
     * the transformation meta data
     */
    @Override
    public TransMeta loadTransFromDBRepository(String transName) {
        isConnected();
        TransMeta transMeta = null;
        try {
            RepositoryDirectoryInterface directory = repository.loadRepositoryDirectoryTree();
            transMeta = repository.loadTransformation(transName, directory, null, true, null);
        } catch (KettleException e) {
            System.out.println("Load Fail.");
        }
        if (transMeta != null) {
            System.out.println("Transformation Load Success!");
        } else {
            System.out.println("Transformation Load Failed!");
        }
        return transMeta;
    }

    /**
     * Load all transformations from database repository
     *
     * @return List<TransMeta>
     * list of all transformations meta
     */
    @Override
    public List<TransMeta> loadAllTransFromDBRepository() {
        isConnected();
        List<TransMeta> transList = new ArrayList<>();
        ObjectId id = new StringObjectId("0");
        try {
            List<RepositoryElementMetaInterface> repositoryElementMetaInterfaces = repository.getTransformationObjects(id, false);
            TransMeta transMeta;
            if (!repositoryElementMetaInterfaces.isEmpty()) {
                for (RepositoryElementMetaInterface reif : repositoryElementMetaInterfaces) {
                    transMeta = repository.loadTransformation(reif.getObjectId(), null);
                    transList.add(transMeta);
                }
            }
        } catch (KettleException e) {
            e.printStackTrace();
        }
        System.out.println("Transformation All Load Success.");
        return transList;
    }

    /**
     * Save the job into database repository
     *
     * @param jobMeta the job meta
     */
    @Override
    public boolean saveJobIntoDBRepository(JobMeta jobMeta) {
        isConnected();
        try {
            RepositoryDirectoryInterface directory = repository.loadRepositoryDirectoryTree();
            jobMeta.setRepositoryDirectory(directory.findDirectory("/"));
            if (isJobExists(jobMeta.getName())) {
                System.out.println("Please rename the job.");
            } else {
                repository.save(jobMeta, null);
                System.out.println("Job Save Success.");
            }
        } catch (KettleException e) {
            System.out.println("Job Save Fail.");
        }
        return true;
    }

    /**
     * Whether the job exists in the database repository
     *
     * @param jobName the job name
     */
    @Override
    public boolean isJobExists(String jobName) {
        isConnected();
        boolean isExists = false;
        try {
            RepositoryDirectoryInterface directoryInterface = repository.loadRepositoryDirectoryTree();
            if (repository.exists(jobName, directoryInterface, JOB)) {
                isExists = true;
                System.out.println("Job Exists!");
            } else {
                isExists = false;
            }
        } catch (KettleException e) {
            e.printStackTrace();
        }
        return isExists;
    }

    /**
     * Load the job from database repository
     *
     * @param jobName the job name
     * @return JobMeta
     * the job meta
     */
    @Override
    public JobMeta loadJobFromDBRepository(String jobName) {
        isConnected();
        JobMeta jobMeta = null;
        try {
            RepositoryDirectoryInterface directory = repository.loadRepositoryDirectoryTree();
            jobMeta = repository.loadJob(jobName, directory.findDirectory("/"), null, null);
        } catch (KettleException e) {
            System.out.println("Load Job Fail.");
        }
        if (jobMeta != null) {
            System.out.println("Job Load Success.");
        } else {
            System.out.println("Job Load Fail.");
        }
        return jobMeta;
    }

    /**
     * Delete all jobs from database repository
     */
    @Override
    public boolean deleteAllJobDBRepository() {
        isConnected();
        ObjectId id = new StringObjectId("0");

        try {
            List<RepositoryElementMetaInterface> repositoryElementMetaInterfaces = repository.getJobObjects(id, false);
            if (repositoryElementMetaInterfaces == null) {
                System.out.println("There Is No job.");
                System.out.println("job Delete Fail.");
                return false;
            } else if (repositoryElementMetaInterfaces.isEmpty()) {
                System.out.println("There Is No job.");
                return false;
            } else {
                for (RepositoryElementMetaInterface reif : repositoryElementMetaInterfaces) {
                    repository.deleteJob(reif.getObjectId());
                }
                System.out.println("Job All Delete Success.");
                return true;
            }
        } catch (KettleException e) {
            System.out.println("Delete Job Fail");
            return false;
        }
    }

    /**
     * Delete the job from database repository
     *
     * @param jobName the job name
     */
    @Override
    public boolean deleteJobFromDBRepository(String jobName) {
        isConnected();
        try {
//            repo = new RepositoryServiceImpl();
            JobMeta jobMeta = loadJobFromDBRepository(jobName);
            if (!isJobExists(jobName)) {
                System.out.println("Job Delete Fail.");
                return false;
            } else {
                repository.deleteJob(jobMeta.getObjectId());
                System.out.println("Job Delete Success.");
                return true;
            }
        } catch (KettleException e) {
            System.out.println("Job Delete Fail.");
            return false;
        }
    }

    /**
     * Load all jobs from database repository
     *
     * @return List<JobMeta>
     * the list of job meta
     */
    @Override
    public List<JobMeta> loadAllJobFromDBRepository() {
        isConnected();
        List<JobMeta> jobList = new ArrayList<>();
        ObjectId id = new StringObjectId("0");
        try {
            List<RepositoryElementMetaInterface> repositoryElementMetaInterfaces = repository.getJobObjects(id, false);
            JobMeta jobMeta;
            if (!repositoryElementMetaInterfaces.isEmpty()) {
                for (RepositoryElementMetaInterface reif : repositoryElementMetaInterfaces) {
                    jobMeta = repository.loadJob(reif.getObjectId(), null);
                    jobList.add(jobMeta);
                }
            }
        } catch (KettleException e) {
            e.printStackTrace();
        }
        System.out.println("job All Load Success.");
        return jobList;
    }
}
