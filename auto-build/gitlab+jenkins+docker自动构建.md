[toc]
## 准备工作
	- 安装启动jenkins
	- gitlab项目
	- docker镜像
	- 至少一台服务器

## 配置jenkins
	- 登陆jenkins
	- 系统管理-插件管理-安装插件
		- GitLab Plugin 连接gitlab需要的插件
		- Environment Injector Plugin 注入环境变量的插件
		- Publish Over SSH 远程部署需要的插件
	- 系统管理-系统设置-Publish over SSH
		- 增加远程服务器(可以是本机)
		
	- 新建任务
		- 选择自由风格即可
		- 勾选Git
			- 配置代码库地址
				- 两种方式
					- 配置http协议地址
						- 用户填写gitlab的账户密码
					- 配置git协议的地址
						- 选择类型 ssh username with private key
						- 用户名必须是git
						- 把home目录.ssh下的私钥贴进Private Key区域
		- build 中选择注入环境变量
			- 填写需要的环境变量
			
				```
				# docker 镜像名称
				IMG_NAME=wenda/easyswoole
				# docker 镜像标签
				IMG_TAG=latest
				# 容器名称
				CONTAINER_NAME=easyswoole
				# 容器暴露端口
				CONTAINER_PORT= 9502
				# 运行模式
				RUN_MOD=-d
				#其他运行参数
				OTHER_OPTIONS=--rm
				```
			- Send files or execute commands over SSH
				- 传输代码(可采用打包压缩后传递的方式)
				- 执行脚本启动容器
		- 保存
	- 点击构建
		- 查看构建历史 查看输出内容进行调试
		
## 配套截图
- [图片地址](http://xmdoc.xiaomawang.com/web/#/34?page_id=1028)
		

