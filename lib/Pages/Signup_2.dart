import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup_2 extends StatefulWidget {
  const Signup_2({Key? key}) : super(key: key);

  @override
  State<Signup_2> createState() => _Signup_2State();
}

class _Signup_2State extends State<Signup_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Page"),
        backgroundColor: Colors.grey[300],
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.phone_android,
                size: 100,
              ),
              Text("Welcome Back !",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 52,
                  )),
              SizedBox(
                height: 75,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your Email Here',
                      labelStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.teal,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your Password Here',
                      labelStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                      icon: Icon(
                        Icons.password,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a Member? ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    Text(' Register Now',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
