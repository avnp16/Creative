import 'package:flutter/material.dart';

class TicTac2 extends StatefulWidget {
  const TicTac2({Key? key}) : super(key: key);

  @override
  State<TicTac2> createState() => _TicTac2State();
}

class _TicTac2State extends State<TicTac2> {
  var b1 = "",
      b2 = "",
      b3 = "",
      b4 = "",
      b5 = "",
      b6 = "",
      b7 = "",
      b8 = "",
      b9 = "";
  int x = 0;
  int o = 0;
  int t = 0;
  String Turn = "X";
  String w = "";
  win() {
    if (b1 == "X" && b2 == "X" && b3 == "X") {
      w = "X";
    } else if (b4 == "X" && b5 == "X" && b6 == "X") {
      w = "X";
    } else if (b7 == "X" && b8 == "X" && b9 == "X") {
      w = "X";
    } else if (b1 == "X" && b4 == "X" && b7 == "X") {
      w = "X";
    } else if (b2 == "X" && b5 == "X" && b8 == "X") {
      w = "X";
    } else if (b3 == "X" && b6 == "X" && b9 == "X") {
      w = "X";
    } else if (b1 == "X" && b5 == "X" && b9 == "X") {
      w = "X";
    } else if (b3 == "X" && b5 == "X" && b7 == "X") {
      w = "X";
    }

    if (b1 == "O" && b2 == "O" && b3 == "O") {
      w = "O";
    } else if (b4 == "O" && b5 == "O" && b6 == "O") {
      w = "O";
    } else if (b7 == "O" && b8 == "O" && b9 == "O") {
      w = "O";
    } else if (b1 == "O" && b4 == "O" && b7 == "O") {
      w = "O";
    } else if (b2 == "O" && b5 == "O" && b8 == "O") {
      w = "O";
    } else if (b3 == "O" && b6 == "O" && b9 == "O") {
      w = "O";
    } else if (b1 == "O" && b5 == "O" && b9 == "O") {
      w = "O";
    } else if (b3 == "O" && b5 == "O" && b7 == "O") {
      w = "O";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TicTac2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "X: $x",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Text("O: $o",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              w == ""
                  ? Text('No one win',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                  : Text('Win=$w',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Text("$b1",
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.bold)),
                        alignment: Alignment.center,
                        color: Colors.teal,
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      onTap: () {
                        setState(() {
                          if (b1 == "" && w == "") {
                            if (t % 2 == 0) {
                              b1 = "X";
                              x++;
                              Turn = "O";
                            } else {
                              b1 = "O";
                              o++;
                              Turn = "X";
                            }
                            t++;
                            win();
                          }
                        });
                      },
                    )),
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Text("$b2",
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.bold)),
                        alignment: Alignment.center,
                        color: Colors.teal,
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      onTap: () {
                        setState(() {
                          if (b2 == "" && w == "") {
                            if (t % 2 == 0) {
                              b2 = "X";
                              x++;
                              Turn = "O";
                            } else {
                              b2 = "O";
                              o++;
                              Turn = "X";
                            }
                            t++;
                            win();
                          }
                        });
                      },
                    )),
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Text('$b3',
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.bold)),
                        alignment: Alignment.center,
                        color: Colors.teal,
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      onTap: () {
                        setState(() {
                          if (b3 == "" && w == "") {
                            if (t % 2 == 0) {
                              b3 = "X";
                              x++;
                              Turn = "O";
                            } else {
                              b3 = "O";
                              o++;
                              Turn = "X";
                            }
                            t++;
                            win();
                          }
                        });
                      },
                    )),
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Text("$b4",
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.bold)),
                        alignment: Alignment.center,
                        color: Colors.teal,
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      onTap: () {
                        setState(() {
                          if (b4 == "" && w == "") {
                            if (t % 2 == 0) {
                              b4 = "X";
                              x++;
                              Turn = "O";
                            } else {
                              b4 = "O";
                              o++;
                              Turn = "X";
                            }
                            t++;
                            win();
                          }
                        });
                      },
                    )),
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Text("$b5",
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.bold)),
                        alignment: Alignment.center,
                        color: Colors.teal,
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      onTap: () {
                        setState(() {
                          if (b5 == "" && w == "") {
                            if (t % 2 == 0) {
                              b5 = "X";
                              x++;
                              Turn = "O";
                            } else {
                              b5 = "O";
                              o++;
                              Turn = "X";
                            }
                            t++;
                            win();
                          }
                        });
                      },
                    )),
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Text('$b6',
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.bold)),
                        alignment: Alignment.center,
                        color: Colors.teal,
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      onTap: () {
                        setState(() {
                          if (b6 == "" && w == "") {
                            if (t % 2 == 0) {
                              b6 = "X";
                              x++;
                              Turn = "O";
                            } else {
                              b6 = "O";
                              o++;
                              Turn = "X";
                            }
                            t++;
                            win();
                          }
                        });
                      },
                    )),
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Text("$b7",
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.bold)),
                        alignment: Alignment.center,
                        color: Colors.teal,
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      onTap: () {
                        setState(() {
                          if (b7 == "" && w == "") {
                            if (t % 2 == 0) {
                              b7 = "X";
                              x++;
                              Turn = "O";
                            } else {
                              b7 = "O";
                              o++;
                              Turn = "X";
                            }
                            t++;
                            win();
                          }
                        });
                      },
                    )),
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Text("$b8",
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.bold)),
                        alignment: Alignment.center,
                        color: Colors.teal,
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      onTap: () {
                        setState(() {
                          if (b8 == "" && w == "") {
                            if (t % 2 == 0) {
                              b8 = "X";
                              x++;
                              Turn = "O";
                            } else {
                              b8 = "O";
                              o++;
                              Turn = "X";
                            }
                            t++;
                            win();
                          }
                        });
                      },
                    )),
                    Expanded(
                        child: InkWell(
                      child: Container(
                        child: Text('$b9',
                            style: TextStyle(
                                fontSize: 100, fontWeight: FontWeight.bold)),
                        alignment: Alignment.center,
                        color: Colors.teal,
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      onTap: () {
                        setState(() {
                          if (b9 == "" && w == "") {
                            if (t % 2 == 0) {
                              b9 = "X";
                              x++;
                              Turn = "O";
                            } else {
                              b9 = "O";
                              o++;
                              Turn = "X";
                            }
                            t++;
                            win();
                          }
                        });
                      },
                    )),
                  ],
                )),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$Turn Turn',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: () {
                    b1 = b2 = b3 = b4 = b5 = b6 = b7 = b8 = b9 = "";
                    x = 0;
                    o = 0;
                    t = 0;
                    Turn = "X";
                    w = "";
                    setState(() {});
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
