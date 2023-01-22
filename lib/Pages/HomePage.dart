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
      Colors.yellow,
      Colors.red,
    ];

    var arrPages = [
      'Box',
      'Sum',
      'Marksheet',
      'BMI',
      'mytest',
      'SignUp',
      'SignUp2',
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
    );
  }
}
