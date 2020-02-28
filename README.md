# 人脸签到系统管理端后台接口
├── README.md 项目描述
├── app  业务侧代码
│   ├── controller 与路由关联的api方法
│   └── modal 数据模型
├── app.js 入口文件
├── bin nodemon
│   ├── run  nodemon 的入口文件
│   └── www
├── config 配置文件
│   ├── dbConfig.js 数据库配置
│   ├── logConfig.js 日志配置 
│   └── serverConfig.js 服务配置
├── logs  日志目录
│   ├── error 错误日志
│   └── response 普通响应日志 (还可以继续拆分，系统日志，业务日志)
├── middleware  中间件
│   └── loggers.js  日志中间件
├── public
│   └── stylesheets 公用文件
├── routes  路由
│   ├── allRoute.js 总路由配置
│   ├── files.js 各个模块路由配置
│   ├── index.js
│   └── users.js
├── uploads 上传文件夹
│   └── 2017-8-29
├── utils 公用方法
│   ├── logUtil.js 
│   └── mkdir.js
├── views 页面层
│   ├── error.jade
│   ├── index.jade
│   └── layout.jade
└── package.json
