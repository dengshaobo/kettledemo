package cn.com.siemens.trm.config;

import cn.com.siemens.trm.service.TransService;
import cn.com.siemens.trm.service.impl.TransServiceImpl;
import cn.com.siemens.trm.trans.CustomizedTrans;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
//@ImportResource("classpath:applicationContext-trm.xml")
public class TransConfig {

    @Bean(name = "customizedTrans")
    public CustomizedTrans getCustomizedTrans() {
        return new CustomizedTrans();
    }

    @Bean(name = "transService")
    public TransService getTransServiceImpl() {
        return new TransServiceImpl();
    }
}
