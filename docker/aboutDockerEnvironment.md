# docker
## Get Docker
- mac

```
wget https://download.docker.com/mac/stable/Docker.dmg
```
- windows

```
url https://oomake.com/download/docker-windows
```

## Dockerfile
- centos
    - [Dockerfile](http://gitlab.xiaomawang.com/zhaowd/workspace/blob/master/docker/Dockerfiles/centos/DockerFile)

- php-fpm
    - [Dockerfile](http://gitlab.xiaomawang.com/zhaowd/workspace/blob/master/docker/Dockerfiles/php-fpm/DockerFile)


- swoole
    - [Dockerfile](http://gitlab.xiaomawang.com/zhaowd/workspace/blob/master/docker/Dockerfiles/swoole/Dockerfile)
    
- easyswoole
    - [Dockerfile](http://gitlab.xiaomawang.com/zhaowd/workspace/blob/master/docker/Dockerfiles/easyswoole/DockerFile)

    - [entrypoint.sh](http://gitlab.xiaomawang.com/zhaowd/workspace/blob/master/docker/Dockerfiles/easyswoole/entrypoint.sh)

- nginx(编译安装)
    - [Dockerfile](http://gitlab.xiaomawang.com/zhaowd/workspace/blob/master/docker/Dockerfiles/nginx/DockerFile)

### How to use Dockerfile

```
mkdir workspace
cd workspace
touch Dockerfile
docker build -t imagename .
```
## demo
- php-fpm

```
docker run -d --rm -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged=true --name=php-fpm -p 9000:9000 -p 80:80 wenda/php-fpm
```

- easyswoole

```
docker run -d --name easyswoole -p 9501:9501 -v xxx:/data/www/code easyswoole
```

## repository
- login
    - user | 小码教育
    - password | hpB[$ewtb1jMd'.&
        - demo
        
        ```
        本地/local：
        docker login --username=小码教育 registry.cn-shanghai.aliyuncs.com
        
        远程/remote(阿里云服务器):
        docker login --username=小码教育 registry-vpc.cn-shanghai.aliyuncs.com
           
        ```
## tag
### easyswoole
- tag (keep same with swoole version | 标签保持和swoole版本一致)
    - 包含easyswoole-3.x框架的镜像
    - latest 
    - 4.3.0
    - 4.3.1
        - demo
         
        ```
        local:
        docker pull registry.cn-shanghai.aliyuncs.com/xmjy-docker/easyswoole
        docker run --rm -d --name easyswoole -P registry.cn-shanghai.aliyuncs.com/xmjy-docker/easyswoole
       
        remote:
        docker pull registry-vpc.cn-shanghai.aliyuncs.com/xmjy-docker/easyswoole
        docker run --rm -d --name easyswoole -P registry-vpc.cn-shanghai.aliyuncs.com/xmjy-docker/easyswoole
        ```
        
### php-fpm
- tag
    - latest
       - 获取整合php-fpm框架的镜像
       - demo
   
        ```
        local:
        docker pull registry.cn-shanghai.aliyuncs.com/xmjy-docker/php-fpm
        
        remote:
        docker pull registry-vpc.cn-shanghai.aliyuncs.com/xmjy-docker/php-fpm
        ```
        
        
        
### centos
- tag
    - latest
       - 解决使用不了systemctl启动问题的镜像
       - demo
       
       ```
       local:
       docker pull registry.cn-shanghai.aliyuncs.com/xmjy-docker/centos
       docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro --name=php --privileged=true registry.cn-shanghai.aliyuncs.com/xmjy-docker/centos
       
       remote:
       docker pull registry-vpc.cn-shanghai.aliyuncs.com/xmjy-docker/centos
       docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro --name=php --privileged=true registry-vpc.cn-shanghai.aliyuncs.com/xmjy-docker/centos
        ```
        
        

             
             







