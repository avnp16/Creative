import 'package:flutter/material.dart';

class PlayerDetails extends StatefulWidget {

  List pllist;
  List plcatlist;
  List plphotolist;
  String teamlogolist;
  int pos;

  PlayerDetails(this.pllist,this.plcatlist,this.plphotolist,this.pos,this.teamlogolist);

  @override
  State<PlayerDetails> createState() => _PlayerDetailsState();
}

class _PlayerDetailsState extends State<PlayerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Player Details'),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(alignment: Alignment.topCenter,image: AssetImage('Images/iplassets/${widget.teamlogolist}'),
                opacity: 0.6)),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('${widget.pos + 1}/${widget.pllist.length}',
                style: TextStyle(fontSize: 20)),
            Container(
              width: MediaQuery.of(context).size.width-100,
              decoration: BoxDecoration(              color: Colors.pink,

                  borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,
                  colors: [
                    Colors.white54,
                    Colors.black38,
                  ]
                )
              ),
              //
              child: Column(
                children: [
                  Image.asset('Images/iplassets/${widget.plphotolist[widget.pos]}'),
                  // Image.asset('Images/iplassets/csk.png'),
                  SizedBox(
                    height: 60,
                  ),


                  Text('${widget.pllist[widget.pos]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                  Text('${widget.plcatlist[widget.pos]}'),
                  SizedBox(
                    height: 60,
                  ),// nilshk


                ],
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      if (widget.pos > 0) {
                        widget.pos--;
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                IconButton(
                    onPressed: () {


                      setState(() {
                        if (widget.pos < widget.pllist.length - 1) {
                          widget.pos++;
                        }
                      });
                    },
                    icon: Icon(Icons.arrow_forward_ios)),
              ],
            ),




          ],
        ),

      ),
    );
  }
}
