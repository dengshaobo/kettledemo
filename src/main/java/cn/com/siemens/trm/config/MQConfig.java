package cn.com.siemens.trm.config;

import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MQConfig {

    @Bean
    public Queue jobLogQueue() {
        return new Queue("jobLogQueue");
    }

    @Bean
    public Queue transLogQueue() {
        return new Queue("transLogQueue");
    }

    @Bean
    public Queue jobStatusQueue() {
        return new Queue("jobStatusQueue");
    }

    @Bean
    public Queue transStatusQueue() {
        return new Queue("transStatusQueue");
    }
}
