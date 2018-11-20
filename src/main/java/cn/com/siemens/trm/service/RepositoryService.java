package cn.com.siemens.trm.service;

import org.pentaho.di.job.JobMeta;
import org.pentaho.di.trans.TransMeta;

import java.util.List;


/**
 * This interface defines methods of execute database repository
 */
public interface RepositoryService {

    /**
     * Initialize database repository
     */
    boolean init();

    /**
     * Whether connect to the database repository
     */
    boolean isConnected();

    /**
     *
     * Below are transformation methods
     *
     */

    /**
     * Save the transformation to the database repository
     *
     * @param transMeta the transformation meta data
     */
    boolean saveTransIntoDBRepository(TransMeta transMeta);

    /**
     * Delete the transformation from database repository
     *
     * @param transName the transformation name
     */
    boolean deleteTransFromDBRepository(String transName);

    /**
     * Load the transformation from database repository
     *
     * @param transName the transformation name
     */
    TransMeta loadTransFromDBRepository(String transName);

    /**
     * Load all transformation from database repository
     *
     * @return List<TransMeta>
     * the transformation meta data list
     */
    List<TransMeta> loadAllTransFromDBRepository();

    /**
     * Delete all transformations from database repository
     */
    boolean deleteAllTransFromDBRepository();

    /**
     * Whether the transformation exists in the database repository
     *
     * @param transName the transformation name
     */
    boolean isTransExists(String transName);

    /**
     *
     * Below are job methods
     *
     */

    /**
     * Save the job into the database repository
     *
     * @param jobMeta the job meta data
     */
    boolean saveJobIntoDBRepository(JobMeta jobMeta);

    /**
     * Delete the job from database repository
     *
     * @param jobName the job name
     */
    boolean deleteJobFromDBRepository(String jobName);

    /**
     * Load the job from database repository
     *
     * @param jobName the job name
     * @return JobMeta
     * the job meta data
     */
    JobMeta loadJobFromDBRepository(String jobName);

    /**
     * Load all jobs from database repository
     *
     * @return List<JobMeta>
     * the job meta data list
     */
    List<JobMeta> loadAllJobFromDBRepository();

    /**
     * Delete all jobs from database repository
     */
    boolean deleteAllJobDBRepository();

    /**
     * Whether the job exists in the database repository
     *
     * @param jobName the job name
     */
    boolean isJobExists(String jobName);
}
