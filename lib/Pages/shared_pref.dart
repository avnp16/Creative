import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mysharedpref extends StatefulWidget {
  const Mysharedpref({Key? key}) : super(key: key);

  @override
  State<Mysharedpref> createState() => _MysharedprefState();
}

class _MysharedprefState extends State<Mysharedpref> {
  int a = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shares Preference"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      a--;
                    });
                  },
                  child: Text("-")),
              Text("${a}"),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      a++;
                    });
                  },
                  child: Text("+")),
            ],
          ),
          Text("Stored/Memory Data =${counter}"),
          ElevatedButton(
              onPressed: () async {
                // Obtain shared preferences.
                final prefs = await SharedPreferences.getInstance();
                // Save an integer value to 'counter' key.
                await prefs.setInt('counter', a);
              },
              child: Text("SET / Store")),
          ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                counter = prefs.getInt('counter') ?? 50;
                print("${counter}");
                setState(() {});
              },
              child: Text("GET")),
          ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                final success = await prefs.remove('counter');
                print("Removed");
                setState(() {});
              },
              child: Text("Remove")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrefsSecond(),
                    ));
              },
              child: Text("Go to Second Page")),
        ],
      ),
    );
  }
}

class PrefsSecond extends StatefulWidget {
  @override
  State<PrefsSecond> createState() => _PrefsSecondState();
}

class _PrefsSecondState extends State<PrefsSecond> {
  int counter = 0;

  get() async {
    final prefs = await SharedPreferences.getInstance();
    counter = prefs.getInt('counter') ?? 10;
    print(counter);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Next Page value=${counter}"),
      ),
    );
  }
}
