import 'package:Creative/Math%20Puzzles/math_puz_page_2.dart';
import 'package:Creative/Math%20Puzzles/math_puz_page_3.dart';
import 'package:Creative/Math%20Puzzles/math_puz_page_4.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MathPuz1 extends StatefulWidget {
  @override
  State<MathPuz1> createState() => _MathPuz1State();
}

class _MathPuz1State extends State<MathPuz1> {
  int level = 0;

  //& Read data
  getLastLevel() async {
    final prefs = await SharedPreferences.getInstance();
    level = prefs.getInt('counter') ?? -1;
    level = level + 1;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getLastLevel();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double bottambarheight = MediaQuery.of(context).padding.bottom;
    double stutusbarheight = MediaQuery.of(context).padding.top;
    double appbarheight = kToolbarHeight;

    double bodyheight =
        MediaQuery.of(context).size.height - appbarheight - stutusbarheight;
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
        body: Column(
          children: [
            Container(
              //~ top part
              height: bodyheight * 0.07,

              alignment: Alignment.topCenter,
              child: const Text("Math Puzzles",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontFamily: "f5")),
            ),
            Container(
              //~ middal part
              height: bodyheight * 0.72,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'Images/img_puzzle/blackboard_main_menu.png'),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      print("lev=$level");

                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return MathPuz2(level);
                        },
                      ));
                    },
                    child: const Text('Continue',
                        style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 8,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            fontFamily: "f5",
                            color: Colors.white70)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return MathPuz4();
                        },
                      ));
                    },
                    child: const Text('Puzzles',
                        style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 8,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            fontFamily: "f5",
                            color: Colors.white70)),
                  ),
                  TextButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();

                        final success = await prefs.remove('counter');
                        final success1 = await prefs.remove('key');
                        final success2 = await prefs.remove('key2');

                        setState(() {});
                      },
                      child: Text("Reset")),
                ],
              ),
              // width: width,
            ),
            Container(
              //~ bottam part
              height: bodyheight * 0.20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: bodyheight * 0.12,
                      child: Image.asset('Images/img_puzzle/ltlicon.png')),
                  Container(
                    height: bodyheight * 0.12,
                    width: width * .40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.all(7),
                              width: width * 0.12,
                              height: bodyheight * 0.07,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: const LinearGradient(colors: [
                                    Colors.black54,
                                    Colors.white24,
                                    Colors.black54
                                  ])),
                              child:
                                  Image.asset('Images/img_puzzle/shareus.png'),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              width: width * 0.12,
                              height: bodyheight * 0.07,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: const LinearGradient(colors: [
                                    Colors.black54,
                                    Colors.white24,
                                    Colors.black54
                                  ])),
                              child:
                                  Image.asset('Images/img_puzzle/emailus.png'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: width * 0.30,
                              height: bodyheight * 0.04,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all()),
                              child: const Text("Privacy Policy",
                                  textAlign: TextAlign.center),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
