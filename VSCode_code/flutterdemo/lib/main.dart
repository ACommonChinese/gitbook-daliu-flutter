import 'dart:io';
import "dart:async";
import 'dart:isolate';

import 'package:flutter/foundation.dart';

main(List<String> args) async {
  int result = await compute(powerNum, 5);
  print(result);
}

int powerNum(int num) {
  return num * num;
}