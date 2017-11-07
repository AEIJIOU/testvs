#! /bin/bash
rsync -e 'ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null' --exclude-from '.gitignore' -avznu ../ pop@114.214.166.247:code/2017_11/gittest/


#因为首次连接服务器会导致自动化任务终端，ssh的客户端这个命令使得第一次连接主机时自动接受新的公钥
#StrictHostKeyChecking=no   禁止ssh时对远程主机的公钥检查

#防止远程主机公钥改变导致ssh连接失败
#UserKnownHostsFile=/dev/null   SSH客户端允许指定不同的 known_hosts 文件 - 当确认中间人劫持攻击风险比较小的情况下使用

#同步时舍去.gitignore规定要过滤掉的文件,尽管.gitignore没有提交修改，也会在同步中实现当前的过滤内容
#--exclude-from '.gitignore'
