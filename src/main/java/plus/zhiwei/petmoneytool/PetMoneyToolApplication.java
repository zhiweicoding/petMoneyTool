package plus.zhiwei.petmoneytool;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableAsync
@SpringBootApplication
@EnableTransactionManagement
@MapperScan("plus.zhiwei.petmoneytool.dao")
@EnableConfigurationProperties
public class PetMoneyToolApplication {

    public static void main(String[] args) {
        SpringApplication.run(PetMoneyToolApplication.class, args);
    }

}
