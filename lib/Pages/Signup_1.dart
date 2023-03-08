import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Signup_1 extends StatefulWidget {
  const Signup_1({Key? key}) : super(key: key);

  @override
  State<Signup_1> createState() => _Signup_1State();
}

class _Signup_1State extends State<Signup_1> {
  String str = '';

  List<String> city = ['', 'Surat', 'Vapi', 'Valsad', 'Mumbai'];

  List<DropdownMenuItem<String>> generate() {
    List<DropdownMenuItem<String>> temp = [];
    for (int i = 0; i < city.length; i++) {
      if (i == 0) {
        temp.add(
          DropdownMenuItem(
            child: Text('Select City'),
            value: '${city[i]}',
          ),
        );
      } else {
        temp.add(
          DropdownMenuItem(
            child: Text('${city[i]}'),
            value: '${city[i]}',
          ),
        );
      }
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //  title: Text("Signup Page",style:GoogleFonts.lato(),),  //! google font use

        // title: Text("Signup Page",style:GoogleFonts.getFont('Lato'),),  //! google font use
      //   title: Text("Signup Page",style:GoogleFonts.getFont('Sassy Frass'),),  //! google font use
         title: Text("Signup Page",style:GoogleFonts.sassyFrass( ),),  //! google font use
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          gradient: LinearGradient(
              colors: [Colors.orange, Colors.white, Colors.green],
              begin: Alignment.topCenter),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 400, 0, 0),
                  color: Colors.transparent,
                  child: const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'Enter your Name Here',
                      labelStyle: TextStyle(
                          color: Colors.blueGrey, fontWeight: FontWeight.bold,fontFamily: 'f1',fontSize: 26),
                      icon: Icon(Icons.account_circle, color: Colors.black),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(5),
                      // ),
                    ),
                  ),
                ), //~ Full Name
                Container(
                  color: Colors.transparent,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'User Name',
                      hintText: 'Enter your User Here',
                      labelStyle: TextStyle(
                          color: Colors.blueGrey, fontWeight: FontWeight.bold),
                      icon: Icon(
                        Icons.account_box,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ), //~ User Name
                Container(
                  color: Colors.transparent,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your Email Here',
                      labelStyle: TextStyle(
                          color: Colors.blueGrey, fontWeight: FontWeight.bold),
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ), //~ Email
                Container(
                  color: Colors.transparent,
                  child: const TextField(
                    obscureText: true,

                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your Password Here',
                      labelStyle: TextStyle(
                          color: Colors.blueGrey, fontWeight: FontWeight.bold),
                      icon: Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ), //~Password
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(18),
                  child: InputDecorator(
                    decoration: InputDecoration(labelText: "Select",border: InputBorder.none),

                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: Icon(Icons.arrow_drop_down),
                        isExpanded: true,

                        onChanged: (value) {
                          setState(() {
                            if (value != '') {
                              str = value!;
                            }
                          });
                        },
                        value: str,
                        items:
                            //DropdownMenuItem(child: Text('Surat'),value: "Surat",),
                            //DropdownMenuItem(child: Text('Vapi'),value: "Vapi",)
                            generate(),
                      ),
                    ),
                  ),
                ), //~DropdownButton

                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  padding: EdgeInsets.all(18),
                  // color: Colors.red,
                  //foregroundDecoration: BoxDecoration(color: Colors.transparent),
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                          side: const BorderSide(
                              color: Colors.red,
                              width: 3,
                              style: BorderStyle.solid),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    icon: const Icon(
                      Icons.account_box,
                      color: Colors.white,
                    ),
                    label: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        
                        "REGISTER",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            backgroundColor: Colors.transparent),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ), //~Register

                Text('By clicking Register you are agreeing to the T&C.'), //~ T and C
              ],
            ),
          ),
        ),
      ),
    );
  }
}
