package cn.com.siemens.trm.utils;

import cn.com.siemens.trm.config.RepositoryConfig;
import cn.com.siemens.trm.config.TransConfig;
import cn.com.siemens.trm.service.RepositoryService;
import cn.com.siemens.trm.service.TransService;
import cn.com.siemens.trm.service.impl.RepositoryServiceImpl;
import cn.com.siemens.trm.service.impl.TransServiceImpl;
import org.pentaho.di.core.exception.KettleException;
import org.pentaho.di.core.logging.LogLevel;
import org.pentaho.di.trans.TransMeta;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * transformation utility to the customized trans
 */
public class TransUtils {

    public static void main(String[] args) throws KettleException {
        ApplicationContext ctx = new AnnotationConfigApplicationContext(RepositoryConfig.class);
        RepositoryService repositoryService = ctx.getBean("repositoryService", RepositoryService.class);

        TransMeta transMeta = generateTransMetaWithKtrFile("etl/update_insert_byq.ktr");
        exec(transMeta);
//        repositoryService.saveTransIntoDBRepository(transMeta);


    }

    public static void exec(TransMeta transMeta) {
        org.pentaho.di.trans.Trans trans = new org.pentaho.di.trans.Trans(transMeta);
        transMeta.setLogLevel(LogLevel.DEBUG);
        try {
            trans.execute(null);
            trans.waitUntilFinished();
            if (trans.getErrors() != 0) {
                System.out.println("Transformation execution fail!");
            } else {
                System.out.println("Transformation execution success!");
            }
        } catch (KettleException e) {
            e.printStackTrace();
        }
    }

    public static TransMeta generateTransMeta(String transName) {
        ApplicationContext context = new AnnotationConfigApplicationContext(TransConfig.class);
        TransService transService = context.getBean("transService", TransServiceImpl.class);
        return transService.generateTableInputOutputTransMeta(transName);
    }

    public static TransMeta generateTransMetaWithKtrFile(String filename) {
        ApplicationContext context = new AnnotationConfigApplicationContext(TransConfig.class);
        TransService transService = context.getBean("transService", TransServiceImpl.class);
        return transService.generateTransMetaWithKtrFile(filename);
    }

    public static void deleteAllTrans() {
        ApplicationContext context = new AnnotationConfigApplicationContext(RepositoryConfig.class);
        RepositoryService repositoryService = context.getBean("repositoryService", RepositoryServiceImpl.class);
        repositoryService.deleteAllTransFromDBRepository();
    }

    public static void deleteTrans(String transName) {
        ApplicationContext context = new AnnotationConfigApplicationContext(RepositoryConfig.class);
        RepositoryService repositoryService = context.getBean("repositoryService", RepositoryServiceImpl.class);
        repositoryService.deleteTransFromDBRepository(transName);
    }

    public static void saveTrans(TransMeta transMeta) {
        ApplicationContext context = new AnnotationConfigApplicationContext(RepositoryConfig.class);
        RepositoryService repositoryService = context.getBean("repositoryService", RepositoryServiceImpl.class);
        repositoryService.saveTransIntoDBRepository(transMeta);
    }

    public static TransMeta loadTrans(String transName) {
        ApplicationContext context = new AnnotationConfigApplicationContext(RepositoryConfig.class);
        RepositoryService repositoryService = context.getBean("repositoryService", RepositoryServiceImpl.class);
        return repositoryService.loadTransFromDBRepository(transName);
    }
}
