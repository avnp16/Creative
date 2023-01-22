import 'package:flutter/material.dart';

class mytest extends StatefulWidget {
  const mytest({Key? key}) : super(key: key);

  @override
  State<mytest> createState() => _mytestState();
}

class _mytestState extends State<mytest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.brown,
          )
        ],
      ),
    );
  }
}
