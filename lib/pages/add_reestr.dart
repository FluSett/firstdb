import 'package:firstdb/db/get_data.dart';
import 'package:firstdb/models/detal_api.dart';
import 'package:firstdb/pages/read_reestr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import '../widgets/loading.dart';
import 'mysql.dart';

class AddReestrPage extends StatefulWidget {
  @override
  _AddReestrPageState createState() => _AddReestrPageState();
}

class _AddReestrPageState extends State<AddReestrPage> {
  String _selectedKodDetali;

  List<Detal> _detals;

  TextEditingController _pibController = TextEditingController();
  TextEditingController _dataZamovlennyaController = TextEditingController();

  void addDetal() async {
    FullScreenDialogs().showFullScreenLoadingDialog(context);

    var url = "https://dbserverproject.000webhostapp.com/add_reestr.php";
    var data = {
      "kodDetali": _selectedKodDetali,
      "pib": _pibController.text,
      "dataZamovlennya": _dataZamovlennyaController.text,
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
                          data: "INSERT INTO reestr (\n"
                              "kodDetali,\n"
                              " pib,\n"
                              "zamovlenaDetal,\n"
                              " nazvaKategoriyi,\n"
                              " dataZamovlennya)\n"
                              "VALUES (\n"
                              " '\$kodDetali',\n"
                              "'\$pib',\n"
                              " (SELECT nazvaDetali FROM detal WHERE kodDetali = \$kodDetali),\n"
                              " (SELECT kategoriyaDetali FROM detal WHERE kodDetali = \$kodDetali),\n"
                              "'\$dataZamovlennya');")));
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
                MaterialPageRoute(builder: (context) => ReadReestrPage()),
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
        title: Text("reestr: INSERT INTO"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.12),
            FutureBuilder(
                future: fetchDetals(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    _detals = snapshot.data;
                    return Container(
                      width: width * 0.4,
                      child: DropdownButton(
                        value: _selectedKodDetali,
                        hint: Text(
                          'Виберіть код деталі',
                          style: TextStyle(fontSize: width * 0.04),),
                        items: _detals.map((e) {
                          return DropdownMenuItem(
                            child: Text(
                              e.kodDetali,
                              style: TextStyle(fontSize: width * 0.04),
                            ),
                            value: e.kodDetali.toString(),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedKodDetali = value;
                          });
                        },
                      ),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
            SizedBox(height: height * 0.037),
            Container(
              width: width * 0.7,
              child: TextFormField(
                controller: _pibController,
                decoration: InputDecoration(hintText: 'П.І.Б'),
                style: TextStyle(fontSize: width * 0.04),
              ),
            ),
            SizedBox(height: height * 0.037),
            Container(
              width: width * 0.7,
              child: TextFormField(
                controller: _dataZamovlennyaController,
                decoration: InputDecoration(hintText: 'Дата замовлення'),
                style: TextStyle(fontSize: width * 0.04),
                keyboardType: TextInputType.datetime,
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
                  'Добавити новий реєстр',
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
