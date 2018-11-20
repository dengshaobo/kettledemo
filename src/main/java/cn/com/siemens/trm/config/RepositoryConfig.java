package cn.com.siemens.trm.config;

import cn.com.siemens.trm.service.RepositoryService;
import cn.com.siemens.trm.service.impl.RepositoryServiceImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
public class RepositoryConfig {

    @Bean(name = "repositoryService")
    public RepositoryService repositoryService() {
        return new RepositoryServiceImpl();
    }


}
