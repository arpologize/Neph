import 'package:flutter/material.dart';
import 'package:neph/screen/login.dart';
import 'package:neph/screen/stats.dart';
import 'package:neph/screen/food.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}
