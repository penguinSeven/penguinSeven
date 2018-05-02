# 2016年终工作总结
　　　担任事9部业PHP工程师一职，主要负责无纸化会议管理软件，以下简称“无纸化”。以及教育资源云平台管理软件的开发工作。
## 工作内容：
    
时间  | 事项 
---|---
1月	|  1、 教育平台教师、学生、家长用户关系开发 
  * |  2、 教育平台测班级管理开发
2月	|  1、无纸化数据库设计
 *	|  2、无纸化测试界面开发
3月 | 1、班级管理界面更新
 * | 2、无纸化会议web后台框架搭建
 * | 3、无纸化测试界面开发
4月	| 1、教育云平台分类重构、调试
* |	2、无纸化会议web页面、基础信息增删改
* |	3、无纸化会议后台数据交互、联调
* |	4、教育云平台管理中心班级管理页面替换  	
5月|1.签到功能开发、联调
*|2、无纸化会议议程、议题开发、联调
*|3、无纸化会议会议纪要、临时文件开发、联调
*|4、无纸化会议会议投票管理开发、联调
6月	|1、会议投票联调、会议室布局
*|2、铭牌、会议服务、集中控制
*|3、无纸化web界面替换
7月| 1、无纸化web界面替换
* | 2、无纸化样式调整
* | 3、指令联调，window运行环境搭建
* | 4、无纸化window兼容性调整
8月| 1、无纸化windows安装包
*|2、会议模板，导出排位图，欢迎界面设置，
*|3、直播管理，视频流推送
*|4、点播视频文件管理
9月	|1、安装包优化，功能调整
*|2、流媒体服务器搭建
*|3、教育云平台注册数据库设计
*|4、项目初始化
10月	|1、教育云平台注册管理
*|2、无纸化web注册功能开发
*|3、会议投票修改，联调
*|4、无纸化自定义欢迎界面、文档转换
11月|1、会议克隆、会议模版实现
*|2、会议室布局优化
*|3、欢迎界面、文档转换联调、界面提醒统一
*|4、多语言版本支持、其他
12月	|1、铭牌功能优化，转图片，联调
*|2、英语版调整、换肤功能实现
*|3、整体样式统一、web运行环境安装包修改
*|4、批处理脚本安装服务，调试，开发


## 个人工作总结：

 1. Linux 开发：  	
　　年初的无纸化项目的开发都是集中在linux debian系统中，最初使用云平台现有的运行环境进行开发，使用xface图形界面，操作上与windows基本一致。使用phpstorm开发工具，在linux上进行了教育云平台、无纸化的开发工作。后期由于运行环境改为windows，linux 环境依然保留，主要用于部分脚本的测试工作，以及php文件打包的加密。
　　
 2. Window开发：  
　　在年中，为了与c++ 服务器的整合，决定将无纸化的linux web运行环境搬到window中，在window上使用了集成开发环境upupw，完成了最初项目的搭建，对项目的window兼容做了部分调整，开发使用与linux一样的开发工具phpstorm，对项目进行了后期的开发与维护。
　　
 3. Socket 通信:  
　　最初在linux系统上开发时，在与c++ 后台通信上，使用php的socket模块、pthread 多线程、shmop扩展内存共享实现进程通信，由同事朱博文完成了最初的socket服务器的搭建。这次是我第一次接触socket通信的开发，通过对源码的分析，不段网页上搜寻资料，对socket有了初步的理解，从开始创建socket对象，监听端口，接收处理数据等测试脚本的编写，了解socket运行机制，之后开始参与socket项目开发。在开发的过程用，遇到了很多问题，如：使基于用Leader-Follower模型创建的socket监听进程，出现连接队列超限制问题，tcp 通信的丢包、粘包问题等等。
　　  
 4. Window 程序打包：  
　　Window环境，使用inno setup 软件进行开发，该工具基于pascal语言进行开发，在使用inno setup软件的过程中，软件对安装流程控制非常明确，很便捷的可以制作出安装包，但是由于web项目运行环境apache，MariaDB，redis和项目中视频管理用到的red5及依赖环境jdk，文档转换工具LibreOffice5，推流和转码工具ffmpeg等等十余个程序的安装，卸载。其中涉及到程序的安装、卸载进程判断，环境变量添加删除，注册表修改，自定义界面选择性安装项目，自定义界面修改xml配置文件，类似的功能inno setup 软件并没有直接实现，需要自行编写pascal程序，在网上查找示例，在不断的调试和修改后，完成了项目的打包工作
　　  
 5. Window 批处理脚本  
　　Window 环境的安装与linux 不同，将服务开机启动，需要将程序写入注册表，或者将程序安装成服务，inno setup 需要配合批处理脚本来完成项目的操作。开始在网页上寻找示例，测试简单脚本，在对批处理脚本有了一定了解之后，开始编写脚本对程序进程的控制，安装、停止、卸载。
 　　  
 6. Workerman 服务器框架  
　　在无纸化开发的后期，window环境对shmop 扩展不支持等原因，引入了workerman服务器框架，该框架使用纯php编写，支持tcp，udp，websocket等多种协议。实现了消息异步等功能，虽然由于使用的是window版本，无法实现高并发，进程监控，多进程等功能，但是已经足够满足无纸化的开发工作。
　　  
 7. 流媒体  
　　在无纸化视频管理的开发过程中，接触了流媒体的相关开发工作。最初在流媒体服务器的选择上，在nginx-rtmp和red5中进行。最终由于nginx上的部分视频播放问题，最终采用red5，red5的window安装简单，但是red5依赖jdk，文件大，由于是java编写，对Java语言不熟悉，没有对red5进一步优化。同时使用ffmpeg完成了直播流推送，视频转码的开发。

## 工作中的不足和问题：

 ①对linux操作系统不够了解，在debian系统上没有独立编译安装lnmp的经验，目前使用云平台环境运行或lnmp集成工具，对服务器的自定义配置熟悉度不够。  

 ②linux shell 脚本的编写，在linux环境的开发中，会经常涉及到shell脚本的使用，由于无纸化的开发工作集中在window，所以对shell的运用很不熟悉  

 ③程序的测试，目前对于程序的测试仅限于功能测试，对程序的部分逻辑错误，以及程序的负载能力没有系统的测试，需要自主学习测试脚本和测试工具，对自己编写的程序有一个系统的认识。

##　2017年的简要计划：
 
 ①要主动学习相关专业领域的知识，提高开发能力，积累经验，对已使用的技术php、mysql、JavaScript加深理解，尝试学习新的技术，来更高效的完成开发工作。  
 
 ②多总结，对开发过程中遇到的难题，争取独立解决问题，提升自己解决问题的能力。