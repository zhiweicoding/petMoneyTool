package plus.zhiwei.petmoneytool.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @Created by zhiwei on 2022/3/22.
 */
@Configuration
public class WebConfig implements WebMvcConfigurer {

    /**
     * 本地资源暴露
     *
     * @param registry
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**","/static/**")
                .addResourceLocations("classpath:/resources/","classpath:/static/");
    }

}
