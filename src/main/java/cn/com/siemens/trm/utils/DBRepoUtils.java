package cn.com.siemens.trm.utils;

public class DBRepoUtils {
    public static final String repoDatabaseXML =
            "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
                    "<connection>" +
                    "<name>trm_repository_on_mysql</name>" +
                    "<server>192.168.56.100</server>" +
                    "<type>MySQL</type>" +
                    "<access>Native</access>" +
                    "<database>trm_repository</database>" +
                    "<port>3306</port>" +
                    "<username>root</username>" +
                    "<password>root</password>" +
                    "</connection>";
}
