import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SDKs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = Items.all();

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget getListView() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return getItem(items[index]);
      },
    );
  }

  Widget getItem(String title) {
    return GestureDetector(
      child: ListTile(title: Text(title),),
      onTap: () {
        print(items.length);
        if (title.compareTo(Items.listView) == 0) {
          print("TODO: $title");
        } else if (title.compareTo(Items.gridView) == 0) {
          print("TODO: $title");
        } else if (title.compareTo(Items.gridView) == 0) {
          print("TODO: $title");
        } else if (title.compareTo(Items.navigator) == 0) {
          print("TODO: $title");
        } else if (title.compareTo(Items.network) == 0) {
          print("TODO: $title");
        }
      },
    );
  }
}

class Items {
  static String row = "Row";
  static String column = "Column";
  static String stack = "Stack";
  static String card = "Card";
  static String listView = "ListView";
  static String gridView = "GridView";
  static String network = "Network";
  static String navigator = "Navigator";

  static List<String> all() {
    return [
      row,
      column,
      stack,
      card,
      listView,
      gridView,
      network,
      navigator
    ];
  }
}