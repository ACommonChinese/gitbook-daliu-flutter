import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Demo"),),
      body: TextBodyWidget(),
    );
  }
}

class TextBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello, 我们都有一个家, 名字叫中国", // 文本字符串
        textAlign: TextAlign.start, // 对齐方式
        maxLines: 1, // 最多行
        overflow: TextOverflow.ellipsis, // 超出的显示方式
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.pink,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.solid
        ),
      ),
    );
  }
}