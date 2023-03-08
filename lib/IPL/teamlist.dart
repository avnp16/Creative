import 'package:Creative/IPL/ipldata.dart';
import 'package:Creative/IPL/playerlist.dart';
import 'package:flutter/material.dart';

class IplTeam extends StatefulWidget {
  const IplTeam({Key? key}) : super(key: key);

  @override
  State<IplTeam> createState() => _IplTeamState();
}

class _IplTeamState extends State<IplTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IPL Teams"),
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Images/iplassets/IPL_Logo.png"))),

        child: ListView.separated(itemBuilder: (context, index) {

          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PlayerList(index); // Value Passing
              },));
            },
            leading: CircleAvatar(
              minRadius: 10,
              maxRadius: 30,
              child: Image.asset('Images/iplassets/${ipldata.team_logo[index]}',),
            ),
            title: Text('${ipldata.team_name[index]}',style:TextStyle(fontWeight: FontWeight.bold,)),
            trailing: IconButton(
              icon: Icon(Icons.navigate_next_outlined), onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PlayerList(index);
              },));

            },
            ),
          );

        }, separatorBuilder: (context, index) {
          return Divider();

        }, itemCount: ipldata.team_name.length),
      ),
    );
  }
}
