import 'package:flutter/material.dart';

class Zomato extends StatefulWidget {
  @override
  State<Zomato> createState() => _ZomatoState();
}

//~ nilesh
//! nilesh
//^ nilesh
//& nilesh
//* nilesh

class _ZomatoState extends State<Zomato> {
  List<int> price = [100, 140, 160, 30, 70];
  List<String> items = [
    'Aloopuri',
    'Bhelpuri',
    'Panipuri',
    'Dahipuri',
    'Masalapuri'
  ];
  List<String> cat = ['With Onion', 'Spicy', 'Sweet', 'Amul Dahi', 'Garlic'];

  bool? c1 = false;
  bool? c2 = false;
  bool? c3 = false;
  bool? c4 = false;
  bool? c5 = false;

  int sum = 0;
  int sum1 = 0;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;

  var myText = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  var myText1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
  var shape1 = OvalBorder();
  var shape2 = BeveledRectangleBorder(borderRadius: BorderRadius.circular(1));

  var col3 = Color(0xfffac674);
  var col2 = Color(0xffb9a795);
  var col1 = Color(0xffe4ccb3);
  var col4 = Color(0xffeb5651);
  var col5 = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(  //^ nilesh
      backgroundColor: col1,
      appBar: AppBar(
        title: Text('Zomato'),
        backgroundColor: col2,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Image.asset(
                        'Images/etc/aloopuri.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                    CheckboxListTile(
                        value: c1,
                        tileColor: col1,
                        checkColor: Colors.white,
                        selectedTileColor: col3,
                        selected: isSelected1,
                        //contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        checkboxShape: isSelected1 == true ? shape1 : shape2,
                        side: BorderSide(width: 2, color: Colors.teal),
                        activeColor: col5,
                        title: Text(
                          items[0],
                          style: myText,
                        ),
                        subtitle: Text(cat[0]),
                        secondary: Text('Price ${price[0]}', style: myText),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (value) {
                          setState(() {
                            c1 = value;
                            if (c1 == true) {
                              sum = sum + price[0];
                              isSelected1 = true;
                            }

                            if (c1 == false) {
                              sum = sum - price[0];
                              isSelected1 = false;
                              sum1 = 0;
                            }
                          });
                        }),
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Image.asset(
                        'Images/etc/bhelpuri.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                    CheckboxListTile(
                        value: c2,
                        tileColor: col1,
                        selected: isSelected2,
                        checkboxShape: isSelected2 == true ? shape1 : shape2,
                        selectedTileColor: col3,
                        side: BorderSide(width: 2, color: Colors.teal),
                        activeColor: col5,
                        title: Text(
                          items[1],
                          style: myText,
                        ),
                        subtitle: Text(cat[1]),
                        secondary: Text('Price ${price[1]}', style: myText),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (value) {
                          setState(() {
                            c2 = value;
                            if (c2 == true) {
                              sum = sum + price[1];
                              isSelected2 = true;
                            }

                            if (c2 == false) {
                              sum = sum - price[1];
                              isSelected2 = false;
                              sum1 = 0;
                            }
                          });
                        }),
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Image.asset(
                        'Images/etc/panipuri.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                    CheckboxListTile(
                      value: c3,
                      tileColor: col1,
                      selected: isSelected3,
                      selectedTileColor: col3,
                      checkboxShape: isSelected3 == true ? shape1 : shape2,
                      side: BorderSide(width: 2, color: Colors.teal),
                      activeColor: col5,
                      title: Text(
                        items[2],
                        style: myText,
                      ),
                      subtitle: Text(cat[2]),
                      secondary: Text(
                        'Price ${price[2]}',
                        style: myText,
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (value) {
                        setState(() {
                          c3 = value;
                          if (c3 == true) {
                            sum = sum + price[2];
                            isSelected3 = true;
                          }

                          if (c3 == false) {
                            sum = sum - price[2];
                            isSelected3 = false;
                            sum1 = 0;
                          }
                        });
                      },
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Image.asset(
                        'Images/etc/dahipuri.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                    CheckboxListTile(
                      value: c4,
                      tileColor: col1,
                      selected: isSelected4,
                      selectedTileColor: col3,
                      checkboxShape: isSelected4 == true ? shape1 : shape2,
                      side: BorderSide(width: 2, color: Colors.teal),
                      activeColor: col5,
                      title: Text(
                        items[3],
                        style: myText,
                      ),
                      subtitle: Text(cat[3]),
                      secondary: Text(
                        'Price ${price[3]}',
                        style: myText,
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (value) {
                        setState(() {
                          c4 = value;
                          if (c4 == true) {
                            sum = sum + price[3];
                            isSelected4 = true;
                          }

                          if (c4 == false) {
                            sum = sum - price[3];
                            isSelected4 = false;
                            sum1 = 0;
                          }
                        });
                      },
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Image.asset(
                        'Images/etc/masalapuri.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                    CheckboxListTile(
                      value: c5,
                      tileColor: col1,
                      selected: isSelected5,
                      selectedTileColor: col3,
                      checkboxShape: isSelected5 == true ? shape1 : shape2,
                      side: BorderSide(width: 2, color: Colors.teal),
                      activeColor: col5,
                      title: Text(
                        items[4],
                        style: myText,
                      ),
                      subtitle: Text(cat[4]),
                      secondary: Text(
                        'Price ${price[4]}',
                        style: myText,
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (value) {
                        setState(() {
                          c5 = value;
                          if (c5 == true) {
                            sum = sum + price[4];
                            isSelected5 = true;
                          }

                          if (c5 == false) {
                            sum = sum - price[4];
                            isSelected5 = false;
                            sum1 = 0;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(       //! nilesh
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: col4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text("Total: $sum", style: myText1),
                ),
              ],
            ),
          ), //~ nilesh
          Container(
            width: double.infinity,
            height: 60,
            color: col4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        sum1 = 0;
                      });

                      if (c1 == true) {
                        sum1 = sum1 + price[0];
                      }
                      if (c2 == true) {
                        sum1 = sum1 + price[1];
                      }
                      if (c3 == true) {
                        sum1 = sum1 + price[2];
                      }
                      if (c4 == true) {
                        sum1 = sum1 + price[3];
                      }
                      if (c5 == true) {
                        sum1 = sum1 + price[4];
                      }
                    },
                    child: Text("Submit")),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "On Submit : ",
                  style: myText,
                ),
                Text(
                  "$sum1",
                  style: myText1,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
                 ],
      ),
    );
  }
}
