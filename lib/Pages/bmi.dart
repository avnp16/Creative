import 'package:flutter/material.dart';

class MyBmi extends StatefulWidget {
  const MyBmi({Key? key}) : super(key: key);

  @override
  State<MyBmi> createState() => _MyBmiState();
}

class _MyBmiState extends State<MyBmi> {
  var wtControler = TextEditingController();
  var ftControler = TextEditingController();
  var inControler = TextEditingController();
  var result = "";
  var bgcolor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI app'),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        color: bgcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "BMI",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            TextField(
              controller: wtControler,
              decoration: InputDecoration(
                labelText: 'Enter your weight in Kgs',
                prefixIcon: Icon(Icons.icecream),
              ),
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            TextField(
              controller: ftControler,
              decoration: InputDecoration(
                  labelText: 'Enter your height in Feet',
                  prefixIcon: Icon(Icons.access_time_filled_outlined)),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: inControler,
              decoration: InputDecoration(
                  labelText: 'Enter your height in Inch',
                  prefixIcon: Icon(Icons.account_balance_wallet)),
              keyboardType: TextInputType.number,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.calculate,
                size: 80,
              ),
              label: Text(''),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.yellowAccent,
                  primary: Colors.black54),
              onPressed: () {
                var wt = wtControler.text.toString();
                var ft = ftControler.text.toString();
                var inch = inControler.text.toString();

                if (wt != '' && ft != '' && inch != '') {
                  var iWt = int.parse(wtControler.text);
                  var iFt = int.parse(ftControler.text);
                  var iInch = int.parse(inControler.text);

                  var tInch = (iFt * 12) + iInch;
                  var tCm = tInch * 2.54;
                  var tM = tCm / 100;
                  var bmi = iWt / (tM * tM);
                  result = "Your BMI is $bmi";

                  var msg = '';

                  if (bmi > 25) {
                    msg = "you are overweight";
                    bgcolor = Colors.red;
                  } else if (bmi < 18) {
                    msg = 'You are underweight';

                    bgcolor = Colors.orange;
                  } else {
                    msg = 'You are Perfect';
                    bgcolor = Colors.green;
                  }
                  ;

                  setState(() {
                    result = '$msg\nYour bmi is ${bmi.toStringAsFixed(2)}';
                  });
                } else {
                  setState(() {
                    result = 'Enter all Field';
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(result,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                )),
            Container(
              // child: Image.asset('Images\heath.jpg'),
              child: Image.network(
                  'https://t4.ftcdn.net/jpg/01/82/37/49/240_F_182374934_0Ne9Y5sQdpg5YUIxrgiAsVGQextThWLY.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
