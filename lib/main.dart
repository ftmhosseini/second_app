import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

Widget buildButton(IconData icon, String label) {
  Color color = Colors.blue;
  return Column(
    children: [
      Icon(
        icon,
        color: color,
      ),
      Container(
        margin: EdgeInsets.all(8.0),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var ttileSection = new Container(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Dead Sea",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Middle east",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text("45"),
          ],
        ),
      ),
    );
    var buttonSection = new Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButton(Icons.call, 'CALL'),
          buildButton(Icons.near_me, 'ROUTE'),
          buildButton(Icons.share, 'SHARE'),
        ],
      ),
    );
    var textSection =  Container(
      padding: EdgeInsets.all(28.0),
      child: Text(
          '''
      The Dead Sea is a salt lake bordered by Jordan to the east and Israel and the West Bank to the west. It lies in the Jordan Rift Valley, and its main tributary is the Jordan River. The lake's surface is 430.5 metres below sea level, making its shores the lowest land-based elevation on Earth.
      ''',
          softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'deadSea.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            ttileSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
