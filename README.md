# 人脸签到系统管理端后台接口

## 前言

* ~~现在主分支为layui版本的前台代码的，本项目现在正在开发VUE版本的后端接口，由于VUE版本与layui版本具有较大的差异，所以项目结构会有很大的区别，目前VUE版本正在开发，如果有兴趣查看开发进度，请切换至vue分支~~
* vue版本以及开发完毕,主分支现为vue,使用layui版本请切换至layui分支。





## 项目介绍

人脸签到系统管理是一套功能较为完整的签到系统，采用前后端分离的系统架构，此模块代码是属于后台管理员接口。

## 关联项目

[微信小程序端代码](https://github.com/wei1793786487/small)

[管理员前端代码（layui版本）](https://github.com/wei1793786487/sign-Front)

[管理员前端代码（vue版本）](https://github.com/wei1793786487/sign-Front-vue)

[微信小程序端后台接口](https://github.com/wei1793786487/miniend)

## 项目演示地址

[人脸识别系统后台登录](https://www.hqgml.com/)

* 备案的的时候填错信息了，，阿里爸爸打电话让我整改，所有网站名称有问题

## 项目技术选型

| 技术              | 说明                         | 官网                                                 |
| ----------------- | ---------------------------- | ---------------------------------------------------- |
| SpringBoot        | 容器+MVC框架                 | https://spring.io/projects/spring-boot               |
| SpringSecurity    | 认证和授权框架               | https://spring.io/projects/spring-security           |
| MyBatis           | ORM框架                      | http://www.mybatis.org/mybatis-3/zh/index.html       |
| MyBatisCodeHelper | 数据层代码生成               | https://github.com/gejun123456/MyBatisCodeHelper-Pro |
| PageHelper        | MyBatis物理分页插件          | http://git.oschina.net/free/Mybatis_PageHelper       |
| Swagger-UI        | 文档生产工具                 | https://github.com/swagger-api/swagger-ui            |
| Redis             | 缓存                         | https://redis.io/                                    |
| hikari            | 数据库连接池                 | http://www.m-hikari.com/                             |
| Lombok            | 简化对象封装工具             | https://github.com/rzwitserloot/lombok               |
| 腾讯云      | 腾讯云人脸识别，短信服务以及对象云存储 | https://console.cloud.tencent.com                    |
| ~~百度地图开放平台~~ | ~~坐标转换~~                 | http://lbsyun.baidu.com/                     |
| ~~fastDFS~~       | ~~轻量级分布式文件系统~~     | https://github.com/happyfish100/fastdfs          |

## 项目结构

```lua

└─com
    └─hqgml
        └─sign
            ├─controller   控制层
            ├─mapper   持久层
            ├─others    其他内容
            │  ├─annotation  自定位注解 
            │  ├─config   项目配置类
            │  ├─exception   自定义异常处理
            │  ├─handler   处理器
            │  ├─jwt   对称加密工具
            │  ├─pojo  定义的其他对象
            │  ├─result  统一返回结果
            │  │  ├─enums 自定义枚举
            │  │  ├─pojo 对象
            │  │  └─utils 返回工具类
            │  └─utlis 工具类
            ├─pojo 业务实体类
            └─servce 服务层
                └─impl 服务层实现类


```











