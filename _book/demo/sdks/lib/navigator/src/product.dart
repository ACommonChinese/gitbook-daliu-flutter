import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品详情"),),
      body: getListView(context),
    );
  }
}

class ProductListPage extends StatelessWidget {
  final List<Product> products;
  ProductListPage({Key key, @required this.products}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
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