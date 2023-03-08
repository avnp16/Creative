import 'package:Creative/Math%20Puzzles/math_puz_page_2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'math_puz_page_1.dart';

class MathPuz3 extends StatefulWidget {
int level;
MathPuz3(this.level);

  @override
  State<MathPuz3> createState() => _MathPuz3State();
}

class _MathPuz3State extends State<MathPuz3> {
  int level=0;
//  int counter=0;

  //& Read data
  // getValue() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   counter= prefs.getInt('counter')?? 0;
  //   print("Pref >> get=$counter");
  //   setState(() {
  //
  //   });
  //
  //
  // }

  //& Write data
  // setValue () async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setInt('counter', level+1);
  //   print("Pref >> set and store= $counter");
  //
  //
  // }




  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    level=widget.level;


  }


  Widget build(BuildContext context) {


    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double bottambarheight = MediaQuery.of(context).padding.bottom;
    double stutusbarheight = MediaQuery.of(context).padding.top;
    double appbarheight = kToolbarHeight;

    double bodyheight = MediaQuery.of(context).size.height;
    // kBottomNavigationBarHeight (instagram)
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 12),

      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('Images/img_puzzle/background.jpg'))),

      child: Scaffold(


        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),

        body: Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,


            children: [
              Text("PUZZLE ${level+1} COMPLETED",style: TextStyle(fontSize: 25,color: Colors.blue.shade800,fontWeight: FontWeight.bold)),

              Image.asset('Images/img_puzzle/trophy.png'),
              Container(
                height: height*0.07,
                width: width*0.50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [Colors.blueGrey,Colors.white70,Colors.blueGrey]),

                ),
                child: InkWell(onTap: () {



                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MathPuz2(level+1);
                  },));


                },
                    child: Text("CONTINUE",style: TextStyle(fontSize: 25),)),
              ),
              SizedBox(
                height: height*0.005,
              ),
              Container(
                height: height*0.07,
                width: width*0.50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [Colors.blueGrey,Colors.white70,Colors.blueGrey]),

                ),
                child: InkWell(onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MathPuz1();
                  },));

                },
                    child: Text("MAIN MENU",style: TextStyle(fontSize: 25),)),
              ),
              SizedBox(
                height: height*0.005,
              ),

              Container(
                height: height*0.07,
                width: width*0.50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [Colors.blueGrey,Colors.white70,Colors.blueGrey]),

                ),
                child: InkWell(onTap: () {

                },
                    child: Text("BUY PRO",style: TextStyle(fontSize: 25),)),
              ),
              SizedBox(
                height: height*0.005,
              ),

              Text("SHARE THIS PUZZLE",style: TextStyle(fontSize: 25,color: Colors.blue.shade800,fontWeight: FontWeight.bold)),
              SizedBox(
                height: height*0.005,
              ),

              Container(
                padding: EdgeInsets.all(7),
                width: width * 0.13,
                height: bodyheight * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      Colors.black54,
                      Colors.white24,
                      Colors.black54
                    ])),
                child:
                Image.asset('Images/img_puzzle/shareus.png'),
              ),
              SizedBox(
                height: height*0.12,
              ),


            ],


          ),
        ),

      ),



    );
  }
}
