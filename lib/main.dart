import 'package:flutter/material.dart';
import 'Day2.dart';
import 'box.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Day2(),
    );
  }
}
