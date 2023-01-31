import 'package:flutter/material.dart';

class Ludo_1 extends StatefulWidget {
  const Ludo_1({Key? key}) : super(key: key);

  @override
  State<Ludo_1> createState() => _Ludo_1State();
}

class _Ludo_1State extends State<Ludo_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ludo Box'),
      ),
      body: Container(
        height: 430,
        width: 430,
        //color: Colors.green,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          color: Colors.green,
        ),
        child: UnconstrainedBox(
          child: Container(
            height: 280,
            width: 280,
            //color: Colors.white,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(40)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(40)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
