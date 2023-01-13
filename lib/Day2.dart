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
  String str1 = "";
  String str2 = "";
  int sum1 = 0;

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
              borderRadius: BorderRadius.circular(80),
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
                      onChanged: (v) {
                        str1 = v;
                        String a = t1.text;
                        String b = t2.text;

                        int n1 = int.parse(a);
                        int n2 = int.parse(b);

                        sum = n1 + n2;
                        print(sum);
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
                    onChanged: (v) {
                      str2 = v;

                      String a = t1.text;
                      String b = t2.text;

                      int n1 = int.parse(a);
                      int n2 = int.parse(b);

                      sum = n1 + n2;
                      print(sum);
                      setState(() {});
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    String a = t1.text;
                    String b = t2.text;

                    int n1 = int.parse(a);
                    int n2 = int.parse(b);

                    sum = n1 + n2;
                    print(sum);

                    setState(() {});
                  },
                  child: const Text(
                    "Calculate SUM",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Input 1 = $str1",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Input 2 = $str2",
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
