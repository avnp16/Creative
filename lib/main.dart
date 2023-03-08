import 'package:Creative/HomePage.dart';
import 'package:Creative/IPL/teamlist.dart';
import 'package:Creative/Math%20Puzzles/math_puz_page_1.dart';
import 'package:Creative/Pages/Ludo_1.dart';
import 'package:Creative/Pages/Marksheet.dart';
import 'package:Creative/Pages/Mylogin.dart';
import 'package:Creative/Pages/Register.dart';
import 'package:Creative/Pages/Signup_1.dart';
import 'package:Creative/Pages/Signup_2.dart';
import 'package:Creative/Pages/Signup_3.dart';
import 'package:Creative/Pages/TicTac.dart';
import 'package:Creative/Pages/TicTac2.dart';
import 'package:Creative/Pages/bmi.dart';
import 'package:Creative/Pages/calling.dart';
import 'package:Creative/Pages/colordemo.dart';
import 'package:Creative/Pages/numpuz.dart';
import 'package:Creative/Pages/shared_pref.dart';
import 'package:Creative/Pages/zomato.dart';
import 'package:Creative/ShayariApp/Category.dart';
import 'package:Creative/Pages/test.dart';
import 'package:flutter/material.dart';
import 'Pages/Sum.dart';

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
        'Sum': (context) => Day2(),
        'Marksheet': (context) => Mymarksheet(),
        'BMI': (context) => MyBmi(),
        'mytest': (context) => mytest(),
        'SignUp': (context) => Signup_1(),
        'SignUp2': (context) => Signup_2(),
        'SignUp3': (context) => Signup_3(),
        'MyLogin':(context) => MyLogin(),
        'MyRegistration':(context) => MyRegistration(),
        'Ludo_1': (context) => Ludo_1(),
        'TicTac': (context) => Tictac(),
        'TicTac2': (context) => TicTac2(),
        'NumPuz': (context) => numpuz(),
        'Calling':(context) => Calling(),
        'Shayari' :(context) => Shayari(),
        'ColorDemo':(context) => DemoColor(),
        'IPL':(context) => IplTeam(),
        'Zomato':(context) => Zomato(),
        'MathPuz':(context) => MathPuz1(),
        'SharedPref':(context) => Mysharedpref(),
      },
      home: MyHomePage(),
    );
  }
}
