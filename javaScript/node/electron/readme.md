## 安装 node.js

### 1. 下载 
  
 windows下载 <http://nodejs.cn/>

### 2. nodejs window下安装与配置淘宝镜像

 - 前往nodejs官网下载安装软件，地址：https://nodejs.org/en/

 - 点击下一步继续安装，安装完成，在命令输入：node -v,npm -v,查看版本，即是安装成功

 - 随便在计算机哪个盘建一个全局目录，比如我的在E盘：E:\nodejs\node_global

 - 设置nodejs全局目录，所有以全局安装的包都被安装在这，打开nodejs命令行窗口Node.js command prompt，

    使用命令行设置：
    
    ```cmd
    npm config set cache "E:\nodejs\node_cache"
    
    npm config set prefix "E:\nodejs\node_global"
    ```

 - 前往淘宝镜像官网 <http://npm.taobao.org/>，可查看安装cnpm包的命令

    在命令行输入：
    
    ```cmd
    npm install -g cnpm --registry=https://registry.npm.taobao.org
    ```
 - 安装完成
    ```cmd
     :: 将 cnpm.bat 路径添加到系统环境变量，就可以使用cnpm命令了
    ```
 
### 3. 调试工具  
 
 该工具基于 Electron 
 将 Node.js 和 Chromium 的功能融合在了一起。
 它的目的在于为调试、分析和开发 Node.js 应用程序提供一个简单的界面。
 
 你可以使用 npm 来安装它:
    ```cmd
     
     npm install -g devtool
    ```
 
### 4. 实例
 
 1. git检出项目
 
 ```cmd
    git clone https://github.com/bojzi/sound-machine-electron-guide.git
 ```
 2. npm 安装
 
 ```cmd
    npm install
 ``` 
 3. 安装electron (当前安装)
 
 ```cmd
    npm install --save-dev electron-prebuilt
 ```
 4. 运行
 
 ```cmd
    npm start
 ```
### 5. 单独安装electron
 安装Electron开发环境
 进行Electron开发之前，先要部署开发环境，在有node.js开发环境的基础上，可以通过npm进行开发环境的安装。
 
 安装有两种方式
 
 > 全局安装
 
 ```cmd
 # Install the `electron` command globally
  npm install electron-prebuilt -g
 ```
 > 当前目录下安装
 
 ```cmd
 # Install as a development dependency
 npm install electron-prebuilt --save-dev
 ```
 二者选一个即可。
 
 安装完成后建立app目录，
 然后将官网的quick-start中的内容分别拷贝到
 package.json，main.js，index.html下。
 
 运行命令
 
 ```cmd
  cd app
  electron .
 ```
 即可看到程序运行。
  