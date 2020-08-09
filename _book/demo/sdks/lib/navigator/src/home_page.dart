import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("导航页面"),),
      body: getListView(context),
    );
  }

  Widget getListView(BuildContext context) {
    return ListView(
      children: <Widget>[
        GestureDetector(
          child: ListTile(title: Text("push pop"),),
          onTap:() {
            Navigator.pop(context);
          },
        ),
        GestureDetector(
          child: ListTile(title: Text("传值"),),
        ),
      ],
    );
  }
}
