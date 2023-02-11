import 'package:Creative/ShayariApp/Config.dart';
import 'package:Creative/ShayariApp/Shayarilist.dart';
import 'package:flutter/material.dart';

class Shayari extends StatefulWidget {
  const Shayari({Key? key}) : super(key: key);

  @override
  State<Shayari> createState() => _ShayariState();
}

class _ShayariState extends State<Shayari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shayari App'),
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
            return ListTile(
              splashColor: Colors.green,
              selectedTileColor: Colors.yellow,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Shayarilist(index);
                  },
                ));
              },
              title: Text(Config.shayariCategory[index]),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "Images/shayari/${Config.photos[index]}"))),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 8,
            );
          },
          itemCount: Config.shayariCategory.length),
    );
  }
}
