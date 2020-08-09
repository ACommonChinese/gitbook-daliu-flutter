import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container Demo"),),
      body: ImageBodyWidget(),
    );
  }
}

class ImageBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Container相当于UIView, 常用
      child: Container(
        // Image.network
        // Image.file
        // Image.asset  Image.asset("images/test.jpg"),
        // Image.memorry
        child: Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1588536100697&di=95fe3bf5ad5411afd1227ff2f6ab3c0f&imgtype=0&src=http%3A%2F%2Fdpic.tiankong.com%2F6v%2Fwl%2FQJ9110647587.jpg%3Fx-oss-process%3Dstyle%2Fshow",
          // color: Colors.purple, // 注意这里不能加color, 否则图片只显示这个颜色
          // fit: BoxFit.contain, // 保持原图比例和显示完全
          // fit: BoxFit.fill, // 拉伸占满整个容器
          // fit: BoxFit.fitWidth, // 把图片按固定宽高比拉伸, 直到横向充满容器, 可能导致图片显示不完
          // fit: BoxFit.fitHeight, // 把图片按固定宽高比拉伸, 直到纵向充满容器, 可能导致图片显示不完
          // fit: BoxFit.cover // 把图片按固定宽高比拉伸, 以同时充满横向和纵向, 可能导致图片显示不完
          // fit: BoxFit.scaleDown // 把图片按固定宽高比拉伸, 原图片要完全显示, 在充满横向和纵向的其中之一时停止拉伸 This is the same as `contain` if that would shrink the image, otherwise it is the same as `none`.
          color: Colors.greenAccent, // 加了color一定要加colorBlendMode, 否则图片不显示, 只显示此颜色
          colorBlendMode: BlendMode.modulate, // 混合模式
          // repeat: ImageRepeat.noRepeat, // 不重复
          // repeat: ImageRepeat.repeat, // 以中间为基准重复, 显示完整中间的图片, 然后上面和下面(或左边右边)可能显示不完全
          // repeat: ImageRepeat.repeatX, // 横向重复
          // repeat: ImageRepeat.repeatY, // 纵向重复
        ),
        width: 500.0,
        height: 500.0,
        color: Colors.lightBlue,
      ),
    );
  }
}