import 'package:flutter/material.dart';

class numpuz extends StatefulWidget {
  const numpuz({Key? key}) : super(key: key);

  @override
  State<numpuz> createState() => _numpuzState();
}

class _numpuzState extends State<numpuz> {
  String b1 = '1';
  String b2 = '7';
  String b3 = '3';
  String b4 = '4';
  String b5 = '8';
  String b6 = '6';
  String b7 = '2';
  String b8 = '5';
  String b9 = '';
  String temp = '';
  String w="";

  win(){
    if(
    b1=='1' && b2=='2'&& b3=='3'&& b4=='4'&& b5=='5'&& b6=='6'&& b7=='7'&& b8=='8'
    ) {
      w = "win";
    }else w='Continue';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text('Number Swap Puzz'),
        backgroundColor: Colors.purple[300],
        elevation: 50.0,
        shadowColor: Colors.amber,
        shape:Border.all(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    if (b2 == '') {
                      b2 = b1;
                      b1 = temp;
                    }

                    if (b4 == '') {
                      b4 = b1;
                      b1 = temp;
                    }

                    setState(() {
                      win();
                    });
                  },
                  child: Text(b1, style: TextStyle(fontSize: 35)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 3, 3, 3),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    if (b1 == '') {
                      b1 = b2;
                      b2 = temp;
                    }

                    if (b3 == '') {
                      b3 = b2;
                      b2 = temp;
                    }
                    if (b5 == '') {
                      b5 = b2;
                      b2 = temp;
                    }
                    setState(() {
                      win();
                    });
                  },
                  child: Text(b2, style: TextStyle(fontSize: 35)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 3, 3, 3),
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.teal),
                child: ElevatedButton(
                  onPressed: () {
                    if (b2 == '') {
                      b2 = b3;
                      b3 = temp;
                    }

                    if (b6 == '') {
                      b6 = b3;
                      b3 = temp;
                    }

                    setState(() {
                      win();
                    });
                  },
                  child: Text(b3, style: TextStyle(fontSize: 35)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(3, 0, 3, 3),
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.teal),
                child: ElevatedButton(
                  onPressed: () {
                    if (b1 == '') {
                      b1 = b4;
                      b4 = temp;
                    }

                    if (b5 == '') {
                      b5 = b4;
                      b4 = temp;
                    }
                    if (b7 == '') {
                      b7 = b4;
                      b4 = temp;
                    }
                    setState(() {
                      win();
                    });
                  },
                  child: Text(b4, style: TextStyle(fontSize: 35)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 3, 3),
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.teal),
                child: ElevatedButton(
                  onPressed: () {
                    if (b2 == '') {
                      b2 = b5;
                      b5 = temp;
                    }

                    if (b4 == '') {
                      b4 = b5;
                      b5 = temp;
                    }
                    if (b6 == '') {
                      b6 = b5;
                      b5 = temp;
                    }

                    if (b8 == '') {
                      b8 = b5;
                      b5 = temp;
                    }
                    setState(() {
                      win();
                    });
                  },
                  child: Text(b5, style: TextStyle(fontSize: 35)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 3, 3),
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.teal),
                child: ElevatedButton(
                  onPressed: () {
                    if (b3 == '') {
                      b3 = b6;
                      b6 = temp;
                    }

                    if (b5 == '') {
                      b5 = b6;
                      b6 = temp;
                    }
                    if (b9 == '') {
                      b9 = b6;
                      b6 = temp;
                    }
                    setState(() {
                      win();
                    });
                  },
                  child: Text(b6, style: TextStyle(fontSize: 35)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(3, 0, 3, 3),
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.teal),
                child: ElevatedButton(
                  onPressed: () {
                    if (b4 == '') {
                      b4 = b7;
                      b7 = temp;
                    }

                    if (b8 == '') {
                      b8 = b7;
                      b7 = temp;
                    }

                    setState(() {
                      win();
                    });
                  },
                  child: Text(b7, style: TextStyle(fontSize: 35)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 3, 3),
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.teal),
                child: ElevatedButton(
                  onPressed: () {
                    if (b7 == '') {
                      b7 = b8;
                      b8 = temp;
                    }

                    if (b5 == '') {
                      b5 = b8;
                      b8 = temp;
                    }
                    if (b9 == '') {
                      b9 = b8;
                      b8 = temp;
                    }
                    setState(() {
                      win();
                    });
                  },
                  child: Text(b8, style: TextStyle(fontSize: 35)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 3, 3),
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.teal),
                child: ElevatedButton(
                  onPressed: () {
                    if (b6 == '') {
                      b6 = b9;
                      b9 = temp;
                    }

                    if (b8 == '') {
                      b8 = b9;
                      b9 = temp;
                    }

                    setState(() {
                      win();
                    });
                  },
                  child: Text(b9, style: TextStyle(fontSize: 35)),
                ),
              ),
            ],
          ),
          Text('Status: $w',style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}
