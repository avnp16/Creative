import 'dart:io';
import 'dart:math';

import 'package:Creative/ShayariApp/Config.dart';
import 'package:external_path/external_path.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:widgets_to_image/widgets_to_image.dart';
import 'package:permission_handler/permission_handler.dart';

class Page4 extends StatefulWidget {
  String last, emoji, title;

  Page4(this.last, this.emoji, this.title);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  Color bgcolor = Colors.red;
  Color textcolor = Colors.yellow;
  String? myemoji;
  List<Color> currentgradient = [Color(0xffff9a9e), Color(0xfffad0c4)];
  bool singlecolor = true;
  double fontsize = 15;
  WidgetsToImageController img_controller = WidgetsToImageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myemoji = widget.emoji;
  }

  @override
  Widget build(BuildContext context) {
    String myFont = 'f3';

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                WidgetsToImage(
                  controller: img_controller,
                  child: Container(
                    color: singlecolor ? bgcolor : null,
                    decoration: singlecolor
                        ? null
                        : BoxDecoration(
                            gradient: LinearGradient(colors: currentgradient)),
                    width: double.infinity,
                    margin: EdgeInsets.all(15),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        myemoji! + widget.last + myemoji!,
                        // widget.last,

                        // widget.emoji+widget.last+widget.emoji,

                        style: TextStyle(
                            fontSize: fontsize,
                            color: textcolor,
                            fontFamily: myFont),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), //~ shyari screen
          // Spacer(),
          Container(
            color: Colors.brown,
            width: double.infinity,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 70,
                        height: 40,
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            int min1 = 0;
                            int max1 = Config.gradient.length;
                            setState(() {
                              int random = Random().nextInt(max1 - min1) + min1;
                              currentgradient = Config.gradient[random];
                              singlecolor = false;
                            });
                          },
                          child: Image.asset('Images/shayari/reload.png'),
                        )),
                    Container(
                      width: 70,
                      height: 40,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2),
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            currentgradient =
                                                Config.gradient[index];
                                            singlecolor = false;
                                          });
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  colors:
                                                      Config.gradient[index])),
                                        ),
                                      );
                                    },
                                    itemCount: Config.gradient.length,
                                  );
                                },
                              );
                            },
                            child: Image.asset('Images/shayari/expand.png')),
                      ),
                    ),
                  ],
                ), //~ Refesh and Cross Icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //~ BackGround
                      width: 120,
                      height: 30,
                      color: Colors.red,
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 150,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: GridView.builder(
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 8),
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      bgcolor = Config
                                                          .arrColor[index];
                                                      singlecolor = true;
                                                    });
                                                  },
                                                  child: Container(
                                                    color:
                                                        Config.arrColor[index],
                                                  ),
                                                ),
                                              );
                                            },
                                            itemCount: Config.arrColor.length),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(Icons.delete_outline)),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Background",
                            style: TextStyle(color: Colors.white),
                          )),
                    ), //! background
                    Container(
                      width: 120,
                      height: 30,
                      color: Colors.red,
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 150,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: GridView.builder(
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 8),
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      textcolor = Config
                                                          .arrColor[index];
                                                    });
                                                  },
                                                  child: Container(
                                                    color:
                                                        Config.arrColor[index],
                                                  ),
                                                ),
                                              );
                                            },
                                            itemCount: Config.arrColor.length),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                              Icons.delete_outline_outlined)),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Text Color",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      color: Colors.red,
                      child: ElevatedButton(
                          onPressed: () async {
                            final bytes = await img_controller.capture();
                            DateTime now = DateTime.now();
                            String imagename =
                                "IMG_${now.year}${now.month}${now.day}${now.hour}${now.minute}${now.second}${now.microsecond}.jpg";

                            var path;

                            Directory appDocDirectory =
                                await getApplicationDocumentsDirectory();



                            new Directory(appDocDirectory.path + '/' + 'dir')
                                .create(recursive: true)
                                // The created directory is returned as a Future.
                                .then((Directory directory) {
                              print('Path of New Dir: ' + directory.path);
                            });

                            var status = await Permission.photos.status;

                            print("my $status");

                            if (status.isDenied) {
                              Map<Permission, PermissionStatus> statuses =
                                  await [
                                Permission.photos,
                                Permission.storage,
                              ].request();

                              print(" $statuses");


                              if (statuses[Permission.photos] ==
                                  PermissionStatus.granted) {
                                File f = File(
                                    '${appDocDirectory.path}/${imagename}');
                                f.writeAsBytesSync(bytes!);
                                Share.shareFiles(['${f.path}']);
                              }
                            }

                            if (status.isGranted) {
                              {
                                File f = File(
                                    '${appDocDirectory.path}/${imagename}');
                                f.writeAsBytesSync(bytes!);
                                Share.shareFiles(['${f.path}']);
                              }
                            }

                            //   showModalBottomSheet(context: context, builder: (
                            //       context) {
                            //     return Container(
                            //         height: 300,
                            //         child: Image.memory(bytes!)
                            //     );
                            //   },
                            //  );
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Share",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ), //~ Background, TextColor and Share
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      height: 30,
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 150,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                              Icons.delete_outline_outlined)),
                                      Expanded(
                                        child: GridView.builder(
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 8),
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                    '${Config.myFont[index]}'),
                                              );
                                            },
                                            itemCount: Config.myFont.length),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Font",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 150,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: 80,
                                      ),
                                      Expanded(
                                        child: ListView.builder(
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                onTap: () {
                                                  setState(() {
                                                    if (Config.emoji[index] ==
                                                        'No Emoji') {
                                                      myemoji = '';
                                                    } else {
                                                      myemoji =
                                                          Config.emoji[index];
                                                    }

                                                    // widget.emoji=Config.emoji[index];

                                                    // print(Config.emoji[index]);
                                                    print(myemoji);
                                                  });
                                                },
                                                title: Text(
                                                    //   '${Config.emoji[index]}'),
                                                    '${Config.emoji[index]}'),
                                              );
                                            },
                                            itemCount: Config.emoji.length),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                              Icons.delete_outline_outlined)),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Emoji",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(
                                  builder: (context, setState1) {
                                    return SizedBox(
                                      height: 150,
                                      child: Slider(
                                        value: fontsize,
                                        onChanged: (value) {
                                          setState(() {
                                            setState1(() {
                                              fontsize = value;
                                            });
                                          });
                                        },
                                        min: 10,
                                        max: 30,
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          child: const Text(
                            "Text Size",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ), //~ Font, Emoji, Text Size
              ],
            ),
          ), //~ bottom sheet
        ],
      ),
    );
  }
}
