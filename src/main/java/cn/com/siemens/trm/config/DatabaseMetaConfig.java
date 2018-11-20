package cn.com.siemens.trm.config;

import cn.com.siemens.trm.entities.DatabaseMeta;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
public class DatabaseMetaConfig {

    @Bean
    DatabaseMeta databaseMeta() {
        return new DatabaseMeta();
    }
}
