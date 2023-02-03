import 'package:flutter/material.dart';

class Mymarksheet extends StatefulWidget {
  const Mymarksheet({Key? key}) : super(key: key);

  @override
  State<Mymarksheet> createState() => _MymarksheetState();
}

class _MymarksheetState extends State<Mymarksheet> {
  TextEditingController m1 = TextEditingController();
  TextEditingController m2 = TextEditingController();
  TextEditingController m3 = TextEditingController();
  TextEditingController m4 = TextEditingController();
  int eng = 0, hid = 0, guj = 0, san = 0;
  int tot = 0, maxx = 0, minn = 0;
  double per = 0.00;
  String grade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Marksheet'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(width: 70, child: Text("English:")),
                  Container(
                    width: 300,
                    child: TextField(
                      controller: m1,
                      decoration:
                          InputDecoration(hintText: "Enter English Mark Here"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: 70, child: Text("Gujarati:")),
                  Container(
                    width: 300,
                    child: TextField(
                      controller: m2,
                      decoration:
                          InputDecoration(hintText: "Enter Gujarati Mark Here"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: 70, child: Text("Hindi:")),
                  Container(
                    width: 300,
                    child: TextField(
                      controller: m3,
                      decoration:
                          InputDecoration(hintText: "Enter Hindi Mark Here"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: 70, child: Text("Sanskrit:")),
                  Container(
                    width: 300,
                    child: TextField(
                      controller: m4,
                      decoration:
                          InputDecoration(hintText: "Enter Sanskrit Mark Here"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.amberAccent),
                    onPressed: () {
                      eng = int.parse(m1.text);
                      guj = int.parse(m2.text);
                      hid = int.parse(m3.text);
                      san = int.parse(m4.text);
                      tot = eng + guj + hid + san;
                      per = tot / 4;
                      List arrmarks = [eng, guj, hid, san];
                      maxx = arrmarks
                          .reduce((curr, next) => curr > next ? curr : next);

                      minn = arrmarks
                          .reduce((curr, next) => curr < next ? curr : next);

                      if (per >= 90) {
                        grade = 'A+';
                      } else if (per >= 80) {
                        grade = 'A';
                      } else if (per >= 70) {
                        grade = 'B';
                      } else {
                        grade = 'C';
                      }
                      ;

                      setState(() {});
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.pink),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.teal,
                    ),
                    width: 200,
                    child: Text(' Subject        ',
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.teal,
                    ),
                    child: Text(
                      'Marks',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child: Text(' English         ',
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    child: Text(
                      '$eng',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child: Text(' Gujarati        ',
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    child: Text('$guj',
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child: Text(' Hindi            ',
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child: Text(
                      '$hid',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child: Text(
                      ' Sanskrit       ',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child: Text(
                      '$san',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child:
                        Text(' Total Marks  ', style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child: Text(
                      '$tot',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child:
                        Text(' Pecentage   ', style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child: Text(
                      '$per%',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(height: 0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child:
                        Text(' Max Mark     ', style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child: Text(
                      '$maxx',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child:
                        Text(' Min Mark     ', style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child: Text(
                      '$minn',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  Container(
                    //color: Colors.red,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    child: Text(' Grade           ',
                        style: TextStyle(fontSize: 30)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.grey,
                    ),
                    width: 200,
                    child: Text(
                      '$grade',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
