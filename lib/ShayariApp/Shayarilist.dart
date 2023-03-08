import 'dart:math';

import 'package:flutter/material.dart';
import 'Config.dart';
import 'Shayaridisp.dart';

class Shayarilist extends StatefulWidget {
  int pos;

  Shayarilist(this.pos);

  @override
  State<Shayarilist> createState() => _ShayarilistState();
}

class _ShayarilistState extends State<Shayarilist> {
  List<String> list = [];
  int number = 0;

  @override
  void initState() {
    super.initState();
    if (widget.pos == 0) {
      list = Config.newShayari;
    }

    if (widget.pos == 1) {
      list = Config.loveShayari;
    }

    if (widget.pos == 2) {
      list = Config.moodoffShayari;
    }

    if (widget.pos == 3) {
      list = Config.funnyShayari;
    }

    if (widget.pos == 4) {
      list = Config.firnedshipShayari;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${Config.shayariCategory[widget.pos]}"),
        actions: [
          Icon(Icons.share),
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert),
            onSelected: (value) {},
            itemBuilder: (BuildContext context) {
              return {
                'Settings',
                'Rate Us',
                'Share',
                'More Apps 1',
                'More Apps 2',
              }.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            int max = Config.emoji.length;
            int min = 1;
            number = Random().nextInt(max - min) + min;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
              child: ListTile(
                splashColor: Colors.yellow,
                tileColor: Colors.pink[400],
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ShayariDisp(list, index, Config.emoji[number],
                          "${Config.shayariCategory[widget.pos]}");
                    },
                  ));
                },
                leading:
                    Image.asset('Images/shayari/${Config.photos[widget.pos]}'),
                title: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    "${Config.emoji[number]}\n ${list[index]}",
                    maxLines: 2,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                trailing: Container(
                  child: Icon(Icons.arrow_forward_ios),
                  foregroundDecoration:
                      BoxDecoration(color: Colors.transparent),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 0,
            );
          },
          itemCount: list.length),
    );
  }
}
