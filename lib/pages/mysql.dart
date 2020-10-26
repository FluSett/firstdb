import 'package:flutter/material.dart';

class MySqlPage extends StatefulWidget {
   final String data;

  MySqlPage({Key key, @required this.data}) : super(key: key);
  @override
  _MySqlPageState createState() => _MySqlPageState();
}

class _MySqlPageState extends State<MySqlPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Text(
          widget.data,
          style: TextStyle(
            fontSize: height * 0.034,
          ),          
        ),
      ),
    );
  }
}