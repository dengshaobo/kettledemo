package cn.com.siemens.trm;

import cn.com.siemens.trm.service.RepositoryService;
import cn.com.siemens.trm.service.impl.RepositoryServiceImpl;
import cn.com.siemens.trm.utils.TransUtils;
import org.pentaho.di.trans.TransMeta;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
