import 'package:Creative/Math%20Puzzles/math_config.dart';
import 'package:Creative/Math%20Puzzles/math_puz_page_2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MathPuz4 extends StatefulWidget {
  @override
  State<MathPuz4> createState() => _MathPuz4State();
}

class _MathPuz4State extends State<MathPuz4> {
  int level = 0;
  List<String> win = [];
  List<String> skip = [];

  // bool isComp = false;

  //& Read data
  getwin() async {
    final prefs = await SharedPreferences.getInstance();
    win = prefs.getStringList('key') ?? [""];
    print("this is win $win");

    setState(() {});
  }

  getskip() async {
    final prefs = await SharedPreferences.getInstance();
    skip = prefs.getStringList('key2') ?? ["0"];
    print("this is skip$skip");

    setState(() {});
  }

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
    getwin();
    getskip();
    getLastLevel();

  }

  @override
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
        body: Column(
          children: [
            const Text(
              'Select Puzzle',
              style:
                  TextStyle(fontSize: 35, color: Colors.blue, fontFamily: "f5"),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 30,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if (win.contains(index.toString()) ||
                          skip.contains(index.toString())) {
                        setState(() {
                          level = index;

                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return MathPuz2(level);
                            },
                          ));
                        });
                      } else
                        print("not won");
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: (win.contains(index.toString())) ||
                                  (skip.contains(index.toString()))
                              ? Border.all()
                              : null,
                          image: DecorationImage(
                              image: AssetImage((win.contains(index.toString()))
                                  ? "Images/img_puzzle/tick.png"
                                  : skip.contains(index.toString())
                                      ? "Images/img_puzzle/background.jpg"
                                      : "Images/img_puzzle/lock.png"))),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              win.contains(index.toString()) ||
                                      skip.contains(index.toString())
                                  ? "${index + 1}"
                                  : "",
                              style: const TextStyle(
                                fontFamily: "f5",
                                fontSize: 50,
                              ),
                              textAlign: TextAlign.center)),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
