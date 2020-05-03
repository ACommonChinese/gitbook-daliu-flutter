library navigator;

import 'package:flutter/cupertino.dart';


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