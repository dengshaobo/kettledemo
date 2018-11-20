package cn.com.siemens.trm.utils;

import org.pentaho.di.core.database.DatabaseMeta;
import org.pentaho.di.core.exception.KettleXMLException;
import org.pentaho.di.job.JobMeta;
import org.pentaho.di.trans.TransMeta;

public class DBUtils {
    public static final String[] databaseXML = {
            "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
                    "<connection>" +
                    "<name>sourceDatabaseName</name>" +
                    "<server>192.168.56.100</server>" +
                    "<type>MySQL</type>" +
                    "<access>Native</access>" +
                    "<database>trm</database>" +
                    "<port>3306</port>" +
                    "<username>root</username>" +
                    "<password>root</password>" +
                    "<useSSL>false</useSSL>" +
                    "</connection>",
            "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
                    "<connection>" +
                    "<name>targetDatabaseName</name>" +
                    "<server>192.168.56.100</server>" +
                    "<type>MySQL</type>" +
                    "<access>Native</access>" +
                    "<database>trm</database>" +
                    "<port>3306</port>" +
                    "<username>root</username>" +
                    "<password>root</password>" +
                    "<useSSL>false</useSSL>" +
                    "</connection>"
    };

    public static void addDatabase(TransMeta transMeta) {
        for (int i = 0; i < databaseXML.length; i++) {
            DatabaseMeta databaseMeta;
            try {
                databaseMeta = new DatabaseMeta(databaseXML[i]);
                transMeta.addDatabase(databaseMeta);
            } catch (KettleXMLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void addDatabase(JobMeta jobMeta) {
        for (int i = 0; i < databaseXML.length; i++) {
            DatabaseMeta databaseMeta;
            try {
                databaseMeta = new DatabaseMeta(databaseXML[i]);
                jobMeta.addDatabase(databaseMeta);
            } catch (KettleXMLException e) {
                e.printStackTrace();
            }
        }
    }
}
