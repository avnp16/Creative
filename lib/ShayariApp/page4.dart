import 'package:flutter/material.dart';

class page4 extends StatefulWidget {
  String last;

  page4(this.last);

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.pink,
            width: double.infinity,
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.last,
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Spacer(),
          Container(
            color: Colors.brown,
            width: double.infinity,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 70,
                        height: 40,
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {

                          },
                          child: Image.asset('Images/shayari/reload.png'),
                        )),
                    Container(
                      width: 70,
                      height: 40,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: InkWell
                          (
                          onTap: () {

                          },
                            child: Image.asset('Images/shayari/expand.png')),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      height: 30,
                      color: Colors.red,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Background",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      color: Colors.red,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Text Color",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      color: Colors.red,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Share",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      height: 30,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Font",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Emoji",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Text Size",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
