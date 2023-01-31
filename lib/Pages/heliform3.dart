import 'package:flutter/material.dart';

class Form3 extends StatefulWidget {
  const Form3({Key? key}) : super(key: key);

  @override
  State<Form3> createState() => _Form3State();
}

class _Form3State extends State<Form3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),),
      ),
      body:Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        height: double.infinity,
      width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.pink,
                Colors.teal,
                Colors.deepPurple
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
        ),
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 100,),
              Container(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),
                    children: [
                      TextSpan(text: "Let's"),
                      TextSpan(text: "  Register",style: TextStyle(
                          fontSize: 35,
                          fontStyle: FontStyle.italic,
                          color: Colors.black
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    hintStyle: TextStyle(fontSize: 20,
                        color: Colors.grey),
                    prefixIcon: Icon(Icons.account_circle,color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only
                        (bottomLeft: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}