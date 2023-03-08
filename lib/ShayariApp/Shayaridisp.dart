import 'dart:math';

import 'package:Creative/ShayariApp/Config.dart';
import 'package:Creative/ShayariApp/page4.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShayariDisp extends StatefulWidget {
  int pos;
  List<String> shayarilist;
  String emj, title;

  ShayariDisp(this.shayarilist, this.pos, this.emj, this.title);

  @override
  State<ShayariDisp> createState() => _ShayariDispState();
}

class _ShayariDispState extends State<ShayariDisp> {
  List<String> list = [];
  PageController? page;
  List<Color> currentgradient=[Color(0xffff9a9e),Color(0xfffad0c4)];
  bool singlecolor=true;





  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    page = PageController(initialPage: widget.pos

    );
  }


  Widget build(BuildContext context) {

    String oneshayari ="\n${widget.shayarilist[widget.pos]}\n";
    String oneemoji="${widget.emj}";





    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container   (
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {


                        showModalBottomSheet(context: context,builder: (context) {
                          return  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {


                                setState(() {
                                  currentgradient=Config.gradient[index];
                                  singlecolor=false;

                                });
                                Navigator.pop(context);




                              },
                              child: Container(
                                margin: EdgeInsets.all(8),

                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: Config.gradient[index]
                                    )
                                ),
                              ),
                            );

                          },
                            itemCount: Config.gradient.length,);

                        },
                                                    );

                      },
                      child: Image.asset('Images/shayari/expand.png')),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text('${widget.pos + 1}/${widget.shayarilist.length}',
                    style: TextStyle(fontSize: 20)),
                const SizedBox(
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(



                      onTap: () {

                        int min=0;
                        int max=Config.gradient.length;
                        setState(() {
                          int random=Random().nextInt(max-min)+min;

                          currentgradient=Config.gradient[random];
                          singlecolor=false;

                        });
                      },
                      child: Image.asset('Images/shayari/reload.png')),
                ),
              ],
            ),
          ), //~ header

          Expanded(
            child: PageView.builder(
              itemCount: widget.shayarilist.length,
              onPageChanged: (value) {
                setState(() {
                  widget.pos = value;
                });
              },
              controller: page,
              pageSnapping: true,
              itemBuilder: (BuildContext context, int index) {
                return ListView(
                  children: [


                  Container(
                   color: singlecolor?Colors.pink:null,
                    decoration:singlecolor?null: BoxDecoration(
                      gradient: LinearGradient(
                        colors: currentgradient
                      ),
                    ),
                    width: double.infinity,

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        oneemoji+oneshayari+oneemoji
                      //  "${widget.emj}\n${widget.shayarilist[index]}\n${widget.emj}"
                        ,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  ],
                );
              },
            ),
          ), //~ page view

          Container(
            height: 70,
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      FlutterClipboard.copy(
                              "${widget.emj}\n${widget.shayarilist[widget.pos]}\n${widget.emj}")
                          .then((value) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text('Copied')));
                      });
                    },
                    icon: Icon(Icons.copy)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (widget.pos > 0) {
                          widget.pos--;
                          page!.jumpToPage(widget.pos);
                        }
                      });
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                Container(
                  height: 30,
                  width: 30,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Page4(
                                "\n${widget.shayarilist[widget.pos]}\n","${widget.emj}",
                                widget.title);
                          },
                        ));
                      },
                      child: Image.asset("Images/shayari/pencil2.png")),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (widget.pos < widget.shayarilist.length - 1) {
                          widget.pos++;
                          page!.jumpToPage(widget.pos);
                        }
                      });
                    },
                    icon: Icon(Icons.arrow_forward_ios)),
                IconButton(
                    onPressed: () {
                      Share.share(
                          "${widget.emj}\n${widget.shayarilist[widget.pos]}\n${widget.emj}");
                    },
                    icon: Icon(Icons.share)),
              ],
            ),
          ) //~ footer
        ],
      ),
    );
  }
}
