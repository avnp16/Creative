import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  List<Color> s;
  int index;

  ColorScreen(this.s, this.index);

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Screen'),
        backgroundColor: widget.s.elementAt(widget.index),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 70,
            color: widget.s.elementAt(widget.index),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${widget.index + 1}/${widget.s.length}',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: widget.s.elementAt(widget.index),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '${widget.s.elementAt(widget.index)} \n Pos=${widget.index}',textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          // Spacer(),
          Container(
            height: 100,
            color: widget.s.elementAt(widget.index),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (widget.index > 0) widget.index--;
                      });
                    },
                    icon: Icon(Icons.navigate_before),
                    iconSize: 50),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.index < widget.s.length - 1) widget.index++;
                    });
                  },
                  icon: Icon(Icons.navigate_next),
                  iconSize: 50,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
