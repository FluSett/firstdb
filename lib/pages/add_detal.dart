import 'package:firstdb/pages/read_detal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:http/http.dart' as http;

import '../widgets/loading.dart';
import 'mysql.dart';

class AddDetalPage extends StatefulWidget {
  @override
  _AddDetalPageState createState() => _AddDetalPageState();
}

class _AddDetalPageState extends State<AddDetalPage> {
  TextEditingController _kodDetaliController = TextEditingController();
  TextEditingController _kategoriyaDetaliController = TextEditingController();
  TextEditingController _nazvaDetaliController = TextEditingController();
  TextEditingController _specifikaciyaController = TextEditingController();
  TextEditingController _nayavnaKilkistController = TextEditingController();
  TextEditingController _gurtovaCinaController = TextEditingController();

  void addDetal() async {
    FocusScope.of(context).requestFocus(FocusNode());

    FullScreenDialogs().showFullScreenLoadingDialog(context);

    var url = "https://dbserverproject.000webhostapp.com/add_detal.php";
    var data = {
      "kodDetali": _kodDetaliController.text,
      "kategoriyaDetali": _kategoriyaDetaliController.text,
      "nazvaDetali": _nazvaDetaliController.text,
      "specifikaciya": _specifikaciyaController.text,
      "nayavnaKilkist": _nayavnaKilkistController.text,
      "gurtovaCina": _gurtovaCinaController.text
    };

    var res = await http.post(url, body: data);

    Navigator.of(context).pop();
  }

  Widget _actionsButtons() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22),
      backgroundColor: Colors.blueAccent,
      visible: true,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
            child: Icon(Icons.code),
            backgroundColor: Colors.blueAccent,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MySqlPage(
                          data: "INSERT INTO detal ("
                              "kodDetali,"
                              " kategoriyaDetali,"
                              "nazvaDetali,"
                              " specifikaciya,"
                              " nayavnaKilkist,"
                              " gurtovaCina)"
                              " VALUES ("
                              "'\$kodDetali',"
                              "'\$kategoriyaDetali',"
                              "'\$nazvaDetali',"
                              "'\$specifikaciya',"
                              "'\$nayavnaKilkist',"
                              " '\$gurtovaCina');")));
            },
            label: 'MySQL запит',
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16.0),
            labelBackgroundColor: Colors.blueAccent),
        SpeedDialChild(
            child: Icon(Icons.add),
            backgroundColor: Colors.blueAccent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReadDetalPage()),
              );
            },
            label: 'Таблиця',
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16.0),
            labelBackgroundColor: Colors.blueAccent),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('detal: INSERT INTO'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.12),
            Container(
              width: width * 0.7,
              child: TextFormField(
                controller: _kodDetaliController,
                decoration: InputDecoration(hintText: 'Код деталі'),
                style: TextStyle(fontSize: width * 0.04),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            SizedBox(height: height * 0.037),
            Container(
              width: width * 0.7,
              child: TextFormField(
                controller: _kategoriyaDetaliController,
                decoration: InputDecoration(hintText: 'Категорія деталі'),
                style: TextStyle(fontSize: width * 0.04),
              ),
            ),
            SizedBox(height: height * 0.037),
            Container(
              width: width * 0.7,
              child: TextFormField(
                controller: _nazvaDetaliController,
                decoration: InputDecoration(hintText: 'Назва деталі'),
                style: TextStyle(fontSize: width * 0.04),
              ),
            ),
            SizedBox(height: height * 0.037),
            Container(
              width: width * 0.7,
              child: TextFormField(
                controller: _specifikaciyaController,
                decoration: InputDecoration(hintText: 'Специфікація'),
                style: TextStyle(fontSize: width * 0.04),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            SizedBox(height: height * 0.037),
            Container(
              width: width * 0.7,
              child: TextFormField(
                controller: _nayavnaKilkistController,
                decoration: InputDecoration(hintText: 'Наявна кількість'),
                style: TextStyle(fontSize: width * 0.04),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            SizedBox(height: height * 0.037),
            Container(
              width: width * 0.7,
              child: TextFormField(
                controller: _gurtovaCinaController,
                decoration: InputDecoration(hintText: 'Гуртова ціна'),
                style: TextStyle(fontSize: width * 0.04),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            SizedBox(height: height * 0.12),
            Container(
              height: height * 0.1,
              width: width * 0.6,
              child: RaisedButton(
                color: Colors.blueAccent,
                onPressed: addDetal,
                child: Text(
                  'Добавити нову деталь',
                  style: TextStyle(fontSize: width * 0.045),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _actionsButtons(),
    );
  }
}
