import 'package:Creative/ShayariApp/page4.dart';
import 'package:flutter/material.dart';

class ShayariDisp extends StatefulWidget {
  int pos;
  List shayarilist;
  String emj, title;

  ShayariDisp(this.shayarilist, this.pos, this.emj, this.title);

  @override
  State<ShayariDisp> createState() => _ShayariDispState();
}

class _ShayariDispState extends State<ShayariDisp> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    String one =
        "${widget.emj}\n${widget.shayarilist[widget.pos]}\n${widget.emj}";

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
          Container(
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: () {

                  },child: Image.asset('Images/shayari/expand.png')),
                ),
                SizedBox(
                  width: 30,
                ),
                Text('${widget.pos + 1}/${widget.shayarilist.length}',
                    style: TextStyle(fontSize: 20)),
                SizedBox(
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {

                      },child: Image.asset('Images/shayari/reload.png')),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  color: Colors.pink,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      one,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Spacer(  ),
          Container(
            height: 70,
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.copy)),
                IconButton(
                    onPressed: () {
                      if (widget.pos > 0) {
                        widget.pos--;
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                Container(
                  height: 30,
                  width: 30,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return page4(one);
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
                        }
                      });
                    },
                    icon: Icon(Icons.arrow_forward_ios)),
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
