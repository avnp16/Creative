import 'package:Creative/Math%20Puzzles/math_config.dart';
import 'package:Creative/Math%20Puzzles/math_puz_page_1.dart';
import 'package:Creative/Math%20Puzzles/math_puz_page_3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MathPuz2 extends StatefulWidget {
  int level;

  MathPuz2(this.level);

  @override
  State<MathPuz2> createState() => _MathPuz2State();
}

class _MathPuz2State extends State<MathPuz2> {
  String str = '';
  int level = 0;
  int counter = 0;
  List<String> win = [];
  List<String> skip = [];

  //& Write data
  setLastLevel() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', level);
  }

  //& Read data
  getLastLevel() async {
    final prefs = await SharedPreferences.getInstance();
    counter = prefs.getInt('counter') ?? 0;
  }

  //& Write data

  setwin() async {
    final prefs = await SharedPreferences.getInstance();

    win = prefs.getStringList("key") ?? [''];
    win.add(level.toString());
    await prefs.setStringList("key", win);

    skip = prefs.getStringList("key2") ?? [''];
    skip.add((level + 1).toString());
    await prefs.setStringList("key2", skip);
  }

  //& Read data

  getwin() async {
    final prefs = await SharedPreferences.getInstance();
    win = prefs.getStringList('key') ?? [""];

    print("this is win $win");

    setState(() {});
  }

  setskip() async {
    final prefs = await SharedPreferences.getInstance();

    skip = prefs.getStringList("key2") ?? [''];
    skip.add((level - 1).toString());
    await prefs.setStringList("key2", skip);
  }

  getskip() async {
    final prefs = await SharedPreferences.getInstance();
    skip = prefs.getStringList('key2') ?? [""];
    print("this is skip$skip");

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    level = widget.level;
    getLastLevel();
    getwin();
    getskip();
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
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('Images/img_puzzle/gameplaybackground.jpg'))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                height: bodyheight * 0.10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        if (win.contains("${level}")) {
                        } else {
                          setskip();
                          getskip();
                        }

                        setState(() {
                          level++;
                        });
                      },
                      child: Container(
                        width: width * 0.12,
                        child: Image.asset('Images/img_puzzle/skip.png'),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width * .60,
                      height: bodyheight * 0.06,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'Images/img_puzzle/level_board.png'),
                              fit: BoxFit.cover)),
                      child: Text(
                        'Puzzle ${level + 1}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: "f5"),
                      ),
                    ),
                    Container(
                      width: width * 0.12,
                      child: Image.asset('Images/img_puzzle/hint.png'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                height: bodyheight * 0.60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('Images/img_puzzle/p${level + 1}.png'),
                )),
              ),
              Container(
                padding: EdgeInsets.only(top: height * 0.01),
                color: Colors.black,
                height: bodyheight * 0.16,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: width * 0.60,
                          height: height * 0.05,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("${str}",
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          // color: Colors.white,
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                str = str.substring(0, str.length - 1);
                              });
                            },
                            icon: Image.asset('Images/img_puzzle/delete.png')),
                        TextButton(
                            onPressed: () {
                              if (str == Mathconfig.anslist[level]) {
                                setLastLevel();
                                setwin();
                                getwin();
                                getLastLevel();

                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return MathPuz3(level);
                                  },
                                ));
                              }
                            },
                            child: Text('Submit',
                                style: GoogleFonts.sanchez(
                                    textStyle: TextStyle(fontSize: 20),
                                    fontStyle: FontStyle.italic)))
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: width * 0.999,
                          height: bodyheight * 0.08,
                          child: GridView.builder(
                            itemCount: 10,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 10),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: TextButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.grey.shade800),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (index == 9) {
                                          index = -1;
                                        }
                                        int index1 = index + 1;

                                        //  str=index1.toString();
                                        str = str + (index1.toString());
                                      });
                                    },
                                    child: Text(
                                      "${Mathconfig.num[index]}",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        final success = await prefs.remove('counter');
                        final success1 = await prefs.remove('key');
                        final success2 = await prefs.remove('key2');
                        print("Clear Data");
                        setState(() {});
                      },
                      child: Text("Clear Data")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MathPuz1(),
                            ));
                      },
                      child: Text("Back to Dashboard"))
                ],
              ),
            ],
          )),
    );
  }
}
