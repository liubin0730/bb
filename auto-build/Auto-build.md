# Auto-build
## steps
- ![picture set up-w500](http://gitlab.xiaomawang.com/zhaowd/workspace/raw/master/auto-build/auto-build-steps.png) 

 ```sequence
    Client->GitLab: push
    GitLab->Jenkins: webhook
    Jenkins->Jenkins: config
    Jenkins->Jenkins: build
    Jenkins->Server: send&ssh
    Server->Server: search image
    Repository-->Server: imgage
    Server->Server: docker run
```


