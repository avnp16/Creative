import 'package:Creative/Pages/colorscreen.dart';
import 'package:flutter/material.dart';

class DemoColor extends StatefulWidget {
  @override
  State<DemoColor> createState() => _DemoColorState();
}

class _DemoColorState extends State<DemoColor> {
  static List<Color> arrColor = [
    Color(0xffd183c9),
    Color(0xffffb6b9),
    Color(0xff5c4f74),
    Color(0xffbbded6),
    Color(0xffff502f),
    Color(0xff004d61),
    Color(0xfff29c2b),
    Color(0xfff6d04d),
    Color(0xff8bc24c),
  ];

  @override
  void initState() {
    super.initState();
    arrColor.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: ListView.builder(
          itemCount: arrColor.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ColorScreen(arrColor, index);
                  },
                ));
              },
              child: Container(
                height: 100,
                margin: EdgeInsets.all(5),
                color: arrColor[index],
                child: Align(
                  alignment: Alignment.center,

                    child: Text('${arrColor[index]}')),
              ),
            );
          },
        ));
  }
}
