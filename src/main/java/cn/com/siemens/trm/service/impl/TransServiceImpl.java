package cn.com.siemens.trm.service.impl;

import cn.com.siemens.trm.config.TransConfig;
import cn.com.siemens.trm.service.TransService;
import cn.com.siemens.trm.trans.CustomizedTrans;
import org.pentaho.di.trans.TransMeta;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class TransServiceImpl implements TransService {

    /**
     * Generate a transformation used to copy from source table to destination
     *
     * @param transName the transformation's name
     * @return TransMeta the transformation meta
     *
     */
    @Override
    public TransMeta generateTableInputOutputTransMeta(String transName) {
        ApplicationContext context = new AnnotationConfigApplicationContext(TransConfig.class);
        CustomizedTrans customizedTrans = context.getBean("customizedTrans", CustomizedTrans.class);
        return customizedTrans.generateTableInputOutputTransMeta(transName);
    }

    @Override
    public TransMeta generateTransMetaWithKtrFile(String filename) {
        ApplicationContext context = new AnnotationConfigApplicationContext(TransConfig.class);
        CustomizedTrans customizedTrans = context.getBean("customizedTrans", CustomizedTrans.class);
        return customizedTrans.generateTransMetaWithKtrFile(filename);
    }
}
