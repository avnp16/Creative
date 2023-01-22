import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  const Day2({Key? key}) : super(key: key);

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  int sum = 0;
  int a = 0;
  int b = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator App"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            borderOnForeground: false,
            color: Colors.yellow,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextField(
                      controller: t1,
                      decoration: InputDecoration(
                          hintText: "Enter Number Here",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 20),
                          labelText: "Number 1",
                          labelStyle: TextStyle(color: Colors.pink.shade200),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      onChanged: (value) {
                        if (value == '') {
                          a = 0;
                          if (t2.text != '') {
                            b = int.parse(t2.text);
                          }
                        } else if (t2.text == '') {
                          b = 0;
                          a = int.parse(value);
                        } else {
                          a = int.parse(value);
                          b = int.parse(t2.text);
                          sum = a + b;
                        }
                        sum = a + b;
                        setState(() {});
                      }),
                ),
                SizedBox.fromSize(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    controller: t2,
                    decoration: InputDecoration(
                        hintText: "Enter Number Here",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                        labelText: "Number 2",
                        labelStyle: TextStyle(color: Colors.pink.shade200),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    onChanged: (value) {
                      if (value == '') {
                        b = 0;
                        if (t1.text != '') {
                          a = int.parse(t1.text);
                        }
                      } else if (t1.text == '') {
                        a = 0;
                        b = int.parse(value);
                      } else {
                        a = int.parse(t1.text);
                        b = int.parse(value);
                        sum = a + b;
                      }

                      sum = a + b;
                      setState(() {});
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    int a = int.parse(t1.text);
                    int b = int.parse(t2.text);

                    sum = a + b;

                    setState(() {});
                  },
                  child: const Text(
                    "Calculate SUM",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Input 1 = $a",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Input 2 = $b",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "[Sum = $sum]",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo),
                ),
              ],
            ),
          ),
        ));
  }
}
