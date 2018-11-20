package cn.com.siemens.trm.service;

import org.pentaho.di.trans.TransMeta;

/**
 * the transformation interface
 * @author  fanyang
 */
public interface TransService {
    TransMeta generateTableInputOutputTransMeta(String transName);
    TransMeta generateTransMetaWithKtrFile(String filename);
}

