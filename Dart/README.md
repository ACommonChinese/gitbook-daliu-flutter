# Dart

在安装Flutter SDK的时候，它已经内置了Dart了, 但是，如果你想单独学习Dart，并且运行自己的Dart代码，最好去安装一个Dart SDK 

安装Dart有两种方式: 

**通过工具安装**  
[官网安装](https://dart.dev/get-dart) 
```
brew install dart -- --devel # 安装
brew upgrade dart # 升级
```

**直接下载SDK，配置环境变量**  
[官网SDK](https://dart.dev/tools/sdk/archive)  

这里把下载下来的dart-sdk解压到/Applications里并配置环境变量

```
export PATH=${PATH}:/usr/bin/:/Applications/flutter/bin:/Applications/dart-sdk/bin

➜  ~ dart --version
Dart VM version: 2.7.2 (Mon Mar 23 22:11:27 2020 +0100) on "macos_x64"
```

### IDE
这里使用VSCode, 安装Dart和Flutter插件, 参考[这里](https://juejin.im/post/5d76340c6fb9a06adb800961)  


