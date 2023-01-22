import 'package:Creative/Pages/HomePage.dart';
import 'package:Creative/Pages/Marksheet.dart';
import 'package:Creative/Pages/Signup_1.dart';
import 'package:Creative/Pages/Signup_2.dart';
import 'package:Creative/Pages/bmi.dart';
import 'package:Creative/Pages/test.dart';
import 'package:flutter/material.dart';
import 'Pages/Sum.dart';
import 'Pages/Box.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      initialRoute: 'home',
      routes: {
        'Box': (context) => Box(),
        'Sum': (context) => Day2(),
        'Marksheet': (context) => Mymarksheet(),
        'BMI': (context) => MyBmi(),
        'mytest': (context) => mytest(),
        'SignUp': (context) => Signup_1(),
        'SignUp2': (context) => Signup_2(),
      },
      home: MyHomePage(),
    );
  }
}
