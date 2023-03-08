import 'package:flutter/material.dart';

class Calling extends StatefulWidget {
  const Calling({Key? key}) : super(key: key);

  @override
  State<Calling> createState() => _CallingState();
}

class _CallingState extends State<Calling> {
  var myimage =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjWvhXdCxvGbmaopbgNQn95ahbEnERySC2sg&usqp=CAU';
  var myimage2 = "Images/etc/img2.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calling')),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              Colors.red,
              Colors.grey,
            ])),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Calling...',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Kanan Sheladiya',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Home +91 8900089000',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //   Container(
                //     height: 170,
                //     width: 200.
                //     decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: Colors.grey,
                //   image: DecorationImage(image: AssetImage(myimage2),fit: BoxFit.cover                 ),
                // //       image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjWvhXdCxvGbmaopbgNQn95ahbEnERySC2sg&usqp=CAU"),
                // //     fit: BoxFit.fill),
                //
                //
                //
                //     ),
                //   ),
                CircleAvatar(
                  radius: 80,
                  // child: ClipOval(child: Image.network(myimage,width: 300,height: 300,fit: BoxFit.cover,)),
                  child: ClipOval(
                      child: Image.asset(
                    myimage2,
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.add,
                    size: 60, semanticLabel: "Add Call", color: Colors.grey),
                Icon(Icons.videocam,
                    size: 60, semanticLabel: "Add Call", color: Colors.grey),
                Icon(Icons.bluetooth,
                    size: 60, semanticLabel: "Add Call", color: Colors.grey),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Add call',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Vedio call',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Bluetooth',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.volume_up,
                    size: 60, semanticLabel: "Add Call", color: Colors.green),
                Icon(Icons.mic_off,
                    size: 60, semanticLabel: "Add Call", color: Colors.grey),
                Icon(Icons.dialpad,
                    size: 60, semanticLabel: "Add Call", color: Colors.grey),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Speaker',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Mute',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Keypad',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.call,
                    size: 45,
                    color: Colors.red,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
