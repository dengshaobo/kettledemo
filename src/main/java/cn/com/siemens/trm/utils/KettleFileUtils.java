package cn.com.siemens.trm.utils;

import org.apache.commons.io.FileUtils;
import org.pentaho.di.job.JobMeta;
import org.pentaho.di.trans.TransMeta;

import java.io.File;
import java.io.IOException;

public class KettleFileUtils {
    public static void makeKtrFile(TransMeta transMeta) {
        String transXML;
        try {
            transXML = transMeta.getXML();
            String transName = "etl/" + transMeta.getName() + ".ktr";
            File file = new File(transName);
            FileUtils.writeStringToFile(file, transXML, "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void makeKjbFile(JobMeta jobMeta) {
        String jobXML = jobMeta.getXML();
        String jobName = "etl/" + jobMeta.getName() + ".kjb";
        File file = new File(jobName);
        try {
            FileUtils.writeStringToFile(file, jobXML, "UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
