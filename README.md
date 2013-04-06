# 微信公众平台小黄鸡

## 本地运行

```bash
git clone https://github.com/metaphysiks/webot-simsimi.git
npm install
make start
```

## 消息调试

```bash
# 将当前目录的 npm 可执行文件添加到 $PATH 环境变量中
export PATH=./node_modules/.bin:$PATH
# 启动服务器
npm start
# 执行 webot 调试命令，默认发送文字消息
webot 
webot -h # 使用 -h 或 --help 查看使用帮助
```

## 发布到云平台

已被配置为可以直接发布到AppFog。

## Credit

修改自[@ktmud](://github.com/ktmud)的[weixin-robot-example][robot-example]。

[robot-example]: https://github.com/ktmud/weixin-robot-example
