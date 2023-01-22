import 'package:flutter/material.dart';

class Signup_1 extends StatefulWidget {
  const Signup_1({Key? key}) : super(key: key);

  @override
  State<Signup_1> createState() => _Signup_1State();
}

class _Signup_1State extends State<Signup_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Page"),
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
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                color: Colors.transparent,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'Enter your Name Here',
                    labelStyle: TextStyle(
                        color: Colors.blueGrey, fontWeight: FontWeight.bold),
                    icon: Icon(Icons.account_circle, color: Colors.black),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(5),
                    // ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                child: TextField(
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
              ),
              Container(
                color: Colors.transparent,
                child: TextField(
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
              ),
              Container(
                color: Colors.transparent,
                child: TextField(
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
              ),
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
                        side: BorderSide(
                            color: Colors.red,
                            width: 3,
                            style: BorderStyle.solid),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                  ),
                  icon: Icon(
                    Icons.account_box,
                    color: Colors.white,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
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
              ),
              Text('By clicking Register you are agreeing to the T&C.'),
            ],
          ),
        ),
      ),
    );
  }
}
