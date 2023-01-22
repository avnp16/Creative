import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first App", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  color: Colors.red,
                  margin: EdgeInsets.only(bottom: 11),
                  height: 80,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "C1",
                    style: TextStyle(fontSize: 70),
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  margin: EdgeInsets.only(bottom: 11),
                  height: 80,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "C2",
                    style: TextStyle(fontSize: 70),
                  ),
                ),
                Container(
                  color: Colors.red,
                  margin: EdgeInsets.only(bottom: 11),
                  height: 80,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text(
                    "C2  Extra",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                color: Colors.green,
                //margin: EdgeInsets.all(11),
                margin: EdgeInsets.only(bottom: 11),
                height: 80,
                width: 150,
                alignment: Alignment.center,
                child: Text(
                  "C3",
                  style: TextStyle(fontSize: 70),
                ),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.only(bottom: 11),
                height: 80,
                width: 150,
                alignment: Alignment.center,
                child: Text(
                  "C4",
                  style: TextStyle(fontSize: 70),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.cyan,
                height: 80,
                width: 150,
                alignment: Alignment.center,
                child: Text(
                  "C5",
                  style: TextStyle(fontSize: 70),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
