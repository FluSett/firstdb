import 'package:flutter/material.dart';

import '../../add_detal.dart';
import '../../add_reestr.dart';
import '../../read_detal.dart';
import '../../read_reestr.dart';

class PrimaryPage extends StatefulWidget {
  @override
  _PrimaryPageState createState() => _PrimaryPageState();
}

class _PrimaryPageState extends State<PrimaryPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReadDetalPage()),
              );
            },
            child: Container(
              height: height * 0.15,
              color: Colors.white12,
              padding: EdgeInsets.only(left: width * 0.09),
              child: Column(
                children: [
                  SizedBox(height: height * 0.025),
                  Row(
                    children: [
                      Container(
                        width: width * 0.18,
                        height: width * 0.18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueAccent,
                        ),
                        child: Icon(Icons.search, size: height * 0.06),
                      ),
                      SizedBox(width: width * 0.075),
                      Text(
                        'Таблиця "detal"',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.036),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReadReestrPage()),
              );
            },
            child: Container(
              height: height * 0.15,
              color: Colors.white12,
              padding: EdgeInsets.only(left: width * 0.09),
              child: Column(
                children: [
                  SizedBox(height: height * 0.025),
                  Row(
                    children: [
                      Container(
                        width: width * 0.18,
                        height: width * 0.18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueAccent,
                        ),
                        child: Icon(Icons.search, size: height * 0.06),
                      ),
                      SizedBox(width: width * 0.075),
                      Text(
                        'Таблиця "reestr"',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.036),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddDetalPage()),
              );
            },
            child: Container(
              height: height * 0.15,
              color: Colors.white12,
              padding: EdgeInsets.only(left: width * 0.09),
              child: Column(
                children: [
                  SizedBox(height: height * 0.025),
                  Row(
                    children: [
                      Container(
                        width: width * 0.18,
                        height: width * 0.18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueAccent,
                        ),
                        child: Icon(Icons.add, size: height * 0.06),
                      ),
                      SizedBox(width: width * 0.075),
                      Text(
                        'Добавити нову \nдеталь',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.036),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddReestrPage()),
              );
            },
            child: Container(
              height: height * 0.15,
              color: Colors.white12,
              padding: EdgeInsets.only(left: width * 0.09),
              child: Column(
                children: [
                  SizedBox(height: height * 0.025),
                  Row(
                    children: [
                      Container(
                        width: width * 0.18,
                        height: width * 0.18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueAccent,
                        ),
                        child: Icon(Icons.add, size: height * 0.06),
                      ),
                      SizedBox(width: width * 0.075),
                      Text(
                        'Добавити новий \nзапис в reestr',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.036),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
