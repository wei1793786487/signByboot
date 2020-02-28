# 人脸签到系统管理端后台接口
├─claer
├─clear
├─pom.xml
├─sign.iml
├─target
|   ├─sign-0.0.2-SNAPSHOT.jar
|   ├─sign-0.0.2-SNAPSHOT.jar.original
|   ├─test-classes
|   ├─maven-status
|   |      ├─maven-compiler-plugin
|   |      |           ├─testCompile
|   |      |           |      ├─default-testCompile
|   |      |           |      |          ├─createdFiles.lst
|   |      |           |      |          └inputFiles.lst
|   |      |           ├─compile
|   |      |           |    ├─default-compile
|   |      |           |    |        ├─createdFiles.lst
|   |      |           |    |        └inputFiles.lst
|   ├─maven-archiver
|   |       └pom.properties
|   ├─generated-test-sources
|   |           ├─test-annotations
|   ├─generated-sources
|   |         ├─annotations
|   ├─classes
|   |    ├─application.yml
|   |    ├─rebel.xml
|   |    ├─META-INF
|   |    |    └spring-configuration-metadata.json
|   |    ├─com
|   |    |  ├─hqgml
|   |    |  |   ├─sign
|   |    |  |   |  ├─SignApplication.class
|   |    |  |   |  ├─utlis
|   |    |  |   |  |   ├─AddressUtils.class
|   |    |  |   |  |   ├─CookieUtils.class
|   |    |  |   |  |   ├─CreateBeanUtlis.class
|   |    |  |   |  |   ├─Distance.class
|   |    |  |   |  |   ├─FileUtils.class
|   |    |  |   |  |   ├─getverUtils.class
|   |    |  |   |  |   ├─IdWorker.class
|   |    |  |   |  |   ├─JsonWriteUtlis.class
|   |    |  |   |  |   ├─MsgUtils.class
|   |    |  |   |  |   ├─ThreadPoolUtil.class
|   |    |  |   |  |   ├─TimeUtils.class
|   |    |  |   |  |   ├─result
|   |    |  |   |  |   |   ├─utils
|   |    |  |   |  |   |   |   └ResultTool.class
|   |    |  |   |  |   |   ├─pojo
|   |    |  |   |  |   |   |  └JsonResult.class
|   |    |  |   |  |   |   ├─enums
|   |    |  |   |  |   |   |   └ResultCode.class
|   |    |  |   |  |   ├─exception
|   |    |  |   |  |   |     ├─ExceptionEnums.class
|   |    |  |   |  |   |     ├─ExceptionResult.class
|   |    |  |   |  |   |     ├─ValidateCodeException.class
|   |    |  |   |  |   |     └XxException.class
|   |    |  |   |  |   ├─annotation
|   |    |  |   |  |   |     ├─ControllerLog.class
|   |    |  |   |  |   |     └ServiceLog.class
|   |    |  |   |  ├─servce
|   |    |  |   |  |   ├─CheckServices.class
|   |    |  |   |  |   ├─FaceService.class
|   |    |  |   |  |   ├─MeetingService.class
|   |    |  |   |  |   ├─MenuService.class
|   |    |  |   |  |   ├─MsgServices.class
|   |    |  |   |  |   ├─PersonsService.class
|   |    |  |   |  |   ├─SysUserService.class
|   |    |  |   |  |   ├─TenlentService.class
|   |    |  |   |  |   ├─UploadService.class
|   |    |  |   |  |   ├─UserLogService.class
|   |    |  |   |  |   ├─impl
|   |    |  |   |  |   |  ├─CheckServiceImpl.class
|   |    |  |   |  |   |  ├─FaceServicesImpl.class
|   |    |  |   |  |   |  ├─MeetingServiceImpl.class
|   |    |  |   |  |   |  ├─MenuServiceImpl.class
|   |    |  |   |  |   |  ├─MsgServicesImpl.class
|   |    |  |   |  |   |  ├─PersonsServiceImpl.class
|   |    |  |   |  |   |  ├─SysUserServiceImpl.class
|   |    |  |   |  |   |  ├─TenlentServiceImpl.class
|   |    |  |   |  |   |  ├─UploadServiceImpl.class
|   |    |  |   |  |   |  └UserLogServiceImpl.class
|   |    |  |   |  ├─pojo
|   |    |  |   |  |  ├─Address.class
|   |    |  |   |  |  ├─BaiduResult.class
|   |    |  |   |  |  ├─Common.class
|   |    |  |   |  |  ├─LayUi.class
|   |    |  |   |  |  ├─Meeting.class
|   |    |  |   |  |  ├─MeetingPersion.class
|   |    |  |   |  |  ├─Menu.class
|   |    |  |   |  |  ├─Persons.class
|   |    |  |   |  |  ├─SysUser.class
|   |    |  |   |  |  └UserLog.class
|   |    |  |   |  ├─mapper
|   |    |  |   |  |   ├─MeetingMapper.class
|   |    |  |   |  |   ├─MeetingMapper.xml
|   |    |  |   |  |   ├─MeetingPersionMapper.class
|   |    |  |   |  |   ├─MeetingPersionMapper.xml
|   |    |  |   |  |   ├─MenuMapper.class
|   |    |  |   |  |   ├─MenuMapper.xml
|   |    |  |   |  |   ├─PersonsMapper.class
|   |    |  |   |  |   ├─PersonsMapper.xml
|   |    |  |   |  |   ├─SysUserMapper.class
|   |    |  |   |  |   ├─SysUserMapper.xml
|   |    |  |   |  |   ├─UserLogMapper.class
|   |    |  |   |  |   └UserLogMapper.xml
|   |    |  |   |  ├─handler
|   |    |  |   |  |    ├─CommonExceptionHandler.class
|   |    |  |   |  |    ├─ConmmonRemberMe.class
|   |    |  |   |  |    ├─CustomizeAccessDeniedHandler.class
|   |    |  |   |  |    ├─CustomizeAuthenticationEntryPoint.class
|   |    |  |   |  |    ├─CustomizeAuthenticationFailureHandler.class
|   |    |  |   |  |    ├─CustomizeAuthenticationSuccessHandler.class
|   |    |  |   |  |    ├─CustomizeLogoutSuccessHandler.class
|   |    |  |   |  |    ├─CustomizeSessionInformationExpiredStrategy.class
|   |    |  |   |  |    └CustomizeValidateCodeFilter.class
|   |    |  |   |  ├─controller
|   |    |  |   |  |     ├─CheckController.class
|   |    |  |   |  |     ├─FaceController.class
|   |    |  |   |  |     ├─LogController.class
|   |    |  |   |  |     ├─MeetingController.class
|   |    |  |   |  |     ├─PersonController.class
|   |    |  |   |  |     ├─UploadController.class
|   |    |  |   |  |     ├─UserController.class
|   |    |  |   |  |     └UtilsController.class
|   |    |  |   |  ├─config
|   |    |  |   |  |   ├─FastClientImporter.class
|   |    |  |   |  |   ├─KeyProperties.class
|   |    |  |   |  |   ├─MsgProperties.class
|   |    |  |   |  |   ├─RedisConfig.class
|   |    |  |   |  |   ├─SecurityConfig.class
|   |    |  |   |  |   ├─SessionConfig.class
|   |    |  |   |  |   ├─SwaggerConfig.class
|   |    |  |   |  |   ├─SystemLogAspect$SaveSystemLogThread.class
|   |    |  |   |  |   ├─SystemLogAspect.class
|   |    |  |   |  |   └WebMvcConfig.class
├─src
|  ├─test
|  |  ├─java
|  |  |  ├─com
|  |  |  |  ├─hqgml
|  |  |  |  |   ├─sign
|  |  |  |  |   |  ├─SignApplicationTests.java
|  |  |  |  |   |  ├─mapper
|  ├─main
|  |  ├─resources
|  |  |     ├─application.yml
|  |  |     ├─rebel.xml
|  |  |     ├─com
|  |  |     |  ├─hqgml
|  |  |     |  |   ├─sign
|  |  |     |  |   |  ├─mapper
|  |  |     |  |   |  |   ├─MeetingMapper.xml
|  |  |     |  |   |  |   ├─MeetingPersionMapper.xml
|  |  |     |  |   |  |   ├─MenuMapper.xml
|  |  |     |  |   |  |   ├─PersonsMapper.xml
|  |  |     |  |   |  |   ├─SysUserMapper.xml
|  |  |     |  |   |  |   └UserLogMapper.xml
|  |  ├─java
|  |  |  ├─com
|  |  |  |  ├─hqgml
|  |  |  |  |   ├─sign
|  |  |  |  |   |  ├─SignApplication.java
|  |  |  |  |   |  ├─utlis
|  |  |  |  |   |  |   ├─AddressUtils.java
|  |  |  |  |   |  |   ├─CookieUtils.java
|  |  |  |  |   |  |   ├─CreateBeanUtlis.java
|  |  |  |  |   |  |   ├─Distance.java
|  |  |  |  |   |  |   ├─FileUtils.java
|  |  |  |  |   |  |   ├─getverUtils.java
|  |  |  |  |   |  |   ├─IdWorker.java
|  |  |  |  |   |  |   ├─JsonWriteUtlis.java
|  |  |  |  |   |  |   ├─MsgUtils.java
|  |  |  |  |   |  |   ├─ThreadPoolUtil.java
|  |  |  |  |   |  |   ├─TimeUtils.java
|  |  |  |  |   |  |   ├─result
|  |  |  |  |   |  |   |   ├─utils
|  |  |  |  |   |  |   |   |   └ResultTool.java
|  |  |  |  |   |  |   |   ├─pojo
|  |  |  |  |   |  |   |   |  └JsonResult.java
|  |  |  |  |   |  |   |   ├─enums
|  |  |  |  |   |  |   |   |   └ResultCode.java
|  |  |  |  |   |  |   ├─exception
|  |  |  |  |   |  |   |     ├─ExceptionEnums.java
|  |  |  |  |   |  |   |     ├─ExceptionResult.java
|  |  |  |  |   |  |   |     ├─ValidateCodeException.java
|  |  |  |  |   |  |   |     └XxException.java
|  |  |  |  |   |  |   ├─annotation
|  |  |  |  |   |  |   |     ├─ControllerLog.java
|  |  |  |  |   |  |   |     └ServiceLog.java
|  |  |  |  |   |  ├─servce
|  |  |  |  |   |  |   ├─CheckServices.java
|  |  |  |  |   |  |   ├─FaceService.java
|  |  |  |  |   |  |   ├─MeetingService.java
|  |  |  |  |   |  |   ├─MenuService.java
|  |  |  |  |   |  |   ├─MsgServices.java
|  |  |  |  |   |  |   ├─PersonsService.java
|  |  |  |  |   |  |   ├─SysUserService.java
|  |  |  |  |   |  |   ├─TenlentService.java
|  |  |  |  |   |  |   ├─UploadService.java
|  |  |  |  |   |  |   ├─UserLogService.java
|  |  |  |  |   |  |   ├─impl
|  |  |  |  |   |  |   |  ├─CheckServiceImpl.java
|  |  |  |  |   |  |   |  ├─FaceServicesImpl.java
|  |  |  |  |   |  |   |  ├─MeetingServiceImpl.java
|  |  |  |  |   |  |   |  ├─MenuServiceImpl.java
|  |  |  |  |   |  |   |  ├─MsgServicesImpl.java
|  |  |  |  |   |  |   |  ├─PersonsServiceImpl.java
|  |  |  |  |   |  |   |  ├─SysUserServiceImpl.java
|  |  |  |  |   |  |   |  ├─TenlentServiceImpl.java
|  |  |  |  |   |  |   |  ├─UploadServiceImpl.java
|  |  |  |  |   |  |   |  └UserLogServiceImpl.java
|  |  |  |  |   |  ├─pojo
|  |  |  |  |   |  |  ├─Address.java
|  |  |  |  |   |  |  ├─BaiduResult.java
|  |  |  |  |   |  |  ├─Common.java
|  |  |  |  |   |  |  ├─LayUi.java
|  |  |  |  |   |  |  ├─Meeting.java
|  |  |  |  |   |  |  ├─MeetingPersion.java
|  |  |  |  |   |  |  ├─Menu.java
|  |  |  |  |   |  |  ├─Persons.java
|  |  |  |  |   |  |  ├─SysUser.java
|  |  |  |  |   |  |  └UserLog.java
|  |  |  |  |   |  ├─mapper
|  |  |  |  |   |  |   ├─MeetingMapper.java
|  |  |  |  |   |  |   ├─MeetingPersionMapper.java
|  |  |  |  |   |  |   ├─MenuMapper.java
|  |  |  |  |   |  |   ├─PersonsMapper.java
|  |  |  |  |   |  |   ├─SysUserMapper.java
|  |  |  |  |   |  |   └UserLogMapper.java
|  |  |  |  |   |  ├─handler
|  |  |  |  |   |  |    ├─CommonExceptionHandler.java
|  |  |  |  |   |  |    ├─ConmmonRemberMe.java
|  |  |  |  |   |  |    ├─CustomizeAccessDeniedHandler.java
|  |  |  |  |   |  |    ├─CustomizeAuthenticationEntryPoint.java
|  |  |  |  |   |  |    ├─CustomizeAuthenticationFailureHandler.java
|  |  |  |  |   |  |    ├─CustomizeAuthenticationSuccessHandler.java
|  |  |  |  |   |  |    ├─CustomizeLogoutSuccessHandler.java
|  |  |  |  |   |  |    ├─CustomizeSessionInformationExpiredStrategy.java
|  |  |  |  |   |  |    └CustomizeValidateCodeFilter.java
|  |  |  |  |   |  ├─controller
|  |  |  |  |   |  |     ├─CheckController.java
|  |  |  |  |   |  |     ├─FaceController.java
|  |  |  |  |   |  |     ├─LogController.java
|  |  |  |  |   |  |     ├─MeetingController.java
|  |  |  |  |   |  |     ├─PersonController.java
|  |  |  |  |   |  |     ├─UploadController.java
|  |  |  |  |   |  |     ├─UserController.java
|  |  |  |  |   |  |     └UtilsController.java
|  |  |  |  |   |  ├─config
|  |  |  |  |   |  |   ├─FastClientImporter.java
|  |  |  |  |   |  |   ├─KeyProperties.java
|  |  |  |  |   |  |   ├─MsgProperties.java
|  |  |  |  |   |  |   ├─RedisConfig.java
|  |  |  |  |   |  |   ├─SecurityConfig.java
|  |  |  |  |   |  |   ├─SessionConfig.java
|  |  |  |  |   |  |   ├─SwaggerConfig.java
|  |  |  |  |   |  |   ├─SystemLogAspect.java
|  |  |  |  |   |  |   └WebMvcConfig.java
├─.mvn
|  ├─wrapper
|  |    ├─maven-wrapper.jar
|  |    ├─maven-wrapper.properties
|  |    └MavenWrapperDownloader.java
