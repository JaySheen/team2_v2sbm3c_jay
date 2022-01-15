package dev.mvc.team2_v2sbm3c_jay;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import dev.mvc.brcontent.Brcontent;
import dev.mvc.brdic.Brdic;

@Configuration
public class WebMvcConfiguration implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // Windows: path = "C:/kd1/deploy/resort_v1sbm3c/contents/storage";
        // ▶ file:///C:/kd1/deploy/resort_v1sbm3c/contents/storage
        // Ubuntu: path = "/home/ubuntu/deploy/resort_v1sbm3c/contents/storage";
        // ▶ file:////home/ubuntu/deploy/resort_v1sbm3c/contents/storage
        // JSP 인식되는 경로: http://localhost:9091/contents/storage";
        registry.addResourceHandler("/brcontent/storage/**").addResourceLocations("file:///" + Brcontent.getUploadDir());
        registry.addResourceHandler("/brdic/storage/**").addResourceLocations("file:///" + Brdic.getUploadDir());
        // registry.addResourceHandler("/attachfile/storage/**").addResourceLocations("file:///" + Attachfile.getUploadDir());
        // registry.addResourceHandler("/member/storage/**").addResourceLocations("file:///" + Member.getUploadDir());
    }
 
}

