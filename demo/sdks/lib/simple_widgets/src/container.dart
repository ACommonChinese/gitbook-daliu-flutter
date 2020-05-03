import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container Demo"),),
      body: ContainerBodyWidget(),
    );
  }
}

class ContainerBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Container相当于UIView, 常用
      child: Container(
        child: Text("Hello", style: TextStyle(fontSize: 40, color: Colors.purple),),
        alignment: Alignment.centerLeft,
        width: MediaQuery.of(context).size.width,
        height: 400.0,
        // color: Colors.cyan,
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0), //const EdgeInsets.all(30),
        margin: const EdgeInsets.all(20), // margin是外边距, 虽然上面设置了width为屏宽, 但设置了margin, 会在左右有20的间隔, 不会占满屏宽
        decoration: BoxDecoration(
          // 渐变
          gradient: const LinearGradient(colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]),
          // 边框
          border: Border.all(width: 2.0, color: Colors.red),
        ),
      ),
    );
  }
}