import 'package:flutter/material.dart';

class Tictac extends StatefulWidget {
  const Tictac({Key? key}) : super(key: key);

  @override
  State<Tictac> createState() => _TictacState();
}

class _TictacState extends State<Tictac> {

  List<String> displayElement = ['', '', '', '', '', '', '', '', ''];
  int oScore = 0;
  int xScore = 0;
  int oCount = 0;
  int xCount = 0;
  String w = '';

  String lastvalue = "X";

  win() {
    if (displayElement[0] == "X" &&
        displayElement[1] == "X" &&
        displayElement[2] == "X") {
      w = "X";
    } else if (displayElement[3] == "X" &&
        displayElement[4] == "X" &&
        displayElement[5] == "X") {
      w = "X";
    } else if (displayElement[6] == "X" &&
        displayElement[7] == "X" &&
        displayElement[8] == "X") {
      w = "X";
    } else if (displayElement[0] == "X" &&
        displayElement[3] == "X" &&
        displayElement[6] == "X") {
      w = "X";
    } else if (displayElement[1] == "X" &&
        displayElement[4] == "X" &&
        displayElement[7] == "X") {
      w = "X";
    } else if (displayElement[2] == "X" &&
        displayElement[5] == "X" &&
        displayElement[8] == "X") {
      w = "X";
    } else if (displayElement[0] == "X" &&
        displayElement[4] == "X" &&
        displayElement[8] == "X") {
      w = "X";
    } else if (displayElement[2] == "X" &&
        displayElement[4] == "X" &&
        displayElement[6] == "X") {
      w = "X";
    }

    if (displayElement[0] == "O" &&
        displayElement[1] == "O" &&
        displayElement[2] == "O") {
      w = "O";
    } else if (displayElement[3] == "O" &&
        displayElement[4] == "O" &&
        displayElement[5] == "O") {
      w = "O";
    } else if (displayElement[6] == "O" &&
        displayElement[7] == "O" &&
        displayElement[8] == "O") {
      w = "O";
    } else if (displayElement[0] == "O" &&
        displayElement[3] == "O" &&
        displayElement[6] == "O") {
      w = "O";
    } else if (displayElement[1] == "O" &&
        displayElement[4] == "O" &&
        displayElement[7] == "O") {
      w = "O";
    } else if (displayElement[2] == "O" &&
        displayElement[5] == "O" &&
        displayElement[8] == "O") {
      w = "O";
    } else if (displayElement[0] == "O" &&
        displayElement[4] == "O" &&
        displayElement[8] == "O") {
      w = "O";
    } else if (displayElement[2] == "O" &&
        displayElement[4] == "O" &&
        displayElement[6] == "O") {
      w = "O";
    }
    ;

    if (w == "X") {
      lastvalue = "X";
    }

    if (w == "O") {
      lastvalue = "O";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TicTac App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey[700],
        elevation: 20,
      ),
      body: Container(
        height: double.infinity,
        // height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(color: Colors.blueGrey[700]

            // gradient: LinearGradient(
            //     colors: [Colors.yellow, Colors.redAccent, Colors.orange],
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight),
            ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Score : X vs O',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            // Text('Count: X=$xCount & O=$oCount',
            //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Text('Its Your Turn : $lastvalue',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            w == ""
                ? Text('No one win',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                : Container(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text('Winner 😇 $w',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.green,
                        )),
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('X',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        Container(
                          height: 15,
                          width: 5,
                          decoration: BoxDecoration(color: Colors.transparent),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: xCount >= 1 ? Colors.yellow : Colors.grey),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: xCount >= 2 ? Colors.yellow : Colors.grey),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: xCount >= 3 ? Colors.yellow : Colors.grey),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: xCount >= 4 ? Colors.yellow : Colors.grey),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: xCount >= 5 ? Colors.yellow : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('0',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        Container(
                          height: 15,
                          width: 5,
                          decoration: BoxDecoration(color: Colors.transparent),
                        ),
                        Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color:
                                    oCount >= 1 ? Colors.yellow : Colors.grey)),
                        Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color:
                                    oCount >= 2 ? Colors.yellow : Colors.grey)),
                        Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color:
                                    oCount >= 3 ? Colors.yellow : Colors.grey)),
                        Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color:
                                    oCount >= 4 ? Colors.yellow : Colors.grey)),
                        Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color:
                                    oCount >= 5 ? Colors.yellow : Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                itemCount: 9,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 6.0,
                  childAspectRatio: 1,
                  crossAxisSpacing: 6.0,
                ),
                itemBuilder: (context, index) => Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (displayElement[index] == '' && w == '') {
                        setState(() {
                          displayElement[index] = lastvalue;
                          if (lastvalue == 'X') {
                            xCount++;
                          } else
                            oCount++;

                          if (lastvalue == 'X') {
                            lastvalue = 'O';
                          } else
                            lastvalue = 'X';

                          win();
                        });
                      }
                    },
                    child: Text(displayElement[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 100)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: () {
                    displayElement = ['', '', '', '', '', '', '', '', ''];
                    oScore = 0;
                    xScore = 0;
                    oCount = 0;
                    xCount = 0;
                    w = "";

                    setState(() {});
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Reset',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
