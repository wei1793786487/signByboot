package com.hqgml.sign.others.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * 丝袜哥的接口文档生成
 * @author Devil
 * @date 2020/2/25 8:48
 */
@Configuration
@EnableSwagger2
public class SwaggerConfig {

   @Bean
   public Docket api(){
       return new Docket(DocumentationType.SWAGGER_2)
               .apiInfo(apiInfo())
               .select()
               .apis(RequestHandlerSelectors.basePackage("com.hqgml.sign.controller"))
               .paths(PathSelectors.any())
               .build();

   }
   private ApiInfo apiInfo(){

       return new ApiInfoBuilder()
               .title("人脸识别签到系统")
               .description("管理端接口文档")
               .version("1.0.0")
               .build();
   }
}
