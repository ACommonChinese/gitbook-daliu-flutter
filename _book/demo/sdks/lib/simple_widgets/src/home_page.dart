import 'package:flutter/material.dart';
import 'package:sdks/simple_widgets/simple_widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("简单组件(Widget)"),),
      body: getListView(context),
    );
  }

  Widget getListView(BuildContext context) {
    return ListView(
      children: <Widget>[
        GestureDetector(
          child: ListTile(
            title: Text("Text",),
          ),
          onTap:() {
            pushToWidget(context, TextWidget());
          },
        ),
        GestureDetector(
          child: ListTile(
            title: Text("Text.rich",),
          ),
          onTap:() {
            pushToWidget(context, TextRichWidget());
          },
        ),
        GestureDetector(
          child: ListTile(
            title: Text("Container",),
          ),
          onTap:() {
            pushToWidget(context, ContainerWidget());
          },
        ),
        GestureDetector(
          child: ListTile(
            title: Text("Image",),
          ),
          onTap:() {
            pushToWidget(context, ImageWidget());
          },
        ),
      ],
    );
  }

  void pushToWidget(BuildContext context, Widget widget) {
    // typedef WidgetBuilder = Widget Function(BuildContext context);
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
  }
}