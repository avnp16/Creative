import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.yellow,
      Colors.red,
      Colors.orange,
      Colors.teal,
      Colors.green,
      Colors.blue,
      Colors.amber,
      Colors.brown,
      Colors.deepPurpleAccent,
      Colors.cyanAccent[100],
      Colors.pinkAccent[100],
      Colors.lightGreenAccent,
      Colors.redAccent,



    ];

    var arrPages = [
      'Box',
      'Sum',
      'Marksheet',
      'BMI',
      'mytest',
      'SignUp',
      'SignUp2',
      'SignUp3',
      'Ludo_1',
      'TicTac',
      'TicTac2',
      'NumPuz',
      'heliform3'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(
            color: arrColors[index],
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, arrPages[index]);
              },
              child: FittedBox(
                child: Text(
                  arrPages[index],
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          );
        },
        itemCount: arrPages.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.amber[200],

          items:  const [

        BottomNavigationBarItem(
            icon: Icon(Icons.home ),
            label: 'Home',
          backgroundColor: Colors.amber
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.yellow
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_back),
          label: 'Back',
          backgroundColor: Colors.blue,
        ),



      ]

                ),
    );
  }
}
