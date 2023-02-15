import 'package:Creative/IPL/ipldata.dart';
import 'package:Creative/IPL/playerdetails.dart';
import 'package:flutter/material.dart';

class PlayerList extends StatefulWidget {
int pos;
PlayerList(this.pos);
  @override
  State<PlayerList> createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {
 List<String> pllist =[];
 List<String> plphotolist =[];
 List<String> plCatlist =[];
 List<String> teamlogolist =[];








  @override

  void initState() {
    super.initState();
    if(widget.pos==0){
      pllist=ipldata.csk;
      plphotolist=ipldata.csk_photo;
      plCatlist=ipldata.csk_cat;
      teamlogolist=ipldata.team_logo;


    }

    if(widget.pos==1) {
      pllist=ipldata.mi;
      plphotolist=ipldata.mi_pic;
      plCatlist=ipldata.mi_cat;
      teamlogolist=ipldata.team_logo;
    }

    if(widget.pos==2) {
      pllist=ipldata.rcb;
    }



  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Player List"),
      ),
      body: Container(

        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Images/iplassets/${teamlogolist[widget.pos]}"),opacity: 0.6)),

        child: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            onTap: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PlayerDetails(pllist,plCatlist,plphotolist,index,teamlogolist[widget.pos]);
              },));
            },

            title: Text("${pllist[index]}",style:TextStyle(fontWeight: FontWeight.bold),),
            leading: CircleAvatar(
              minRadius: 10,
              maxRadius: 30,
              child: Image.asset('Images/iplassets/${plphotolist[index]}'),
            ),
            subtitle: Text('${plCatlist[index]}'),
            trailing: IconButton(icon: Icon( Icons.navigate_next),onPressed: () {

            },),

          );

        }, separatorBuilder: (context, index) {
          return Divider();
        }, itemCount: pllist.length),
      )

    );
  }
}
