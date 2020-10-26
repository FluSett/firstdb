import 'dart:ui';

import 'package:firstdb/db/get_data.dart';
import 'package:firstdb/models/detal_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'add_detal.dart';
import 'mysql.dart';

class ReadDetalPage extends StatefulWidget {
  @override
  _ReadDetalPageState createState() => _ReadDetalPageState();
}

class _ReadDetalPageState extends State<ReadDetalPage> {
  List<Detal> _detals;

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
            MaterialPageRoute(builder: (context) => MySqlPage(data: "SELECT * FROM detal;")),
          );
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
            MaterialPageRoute(builder: (context) => AddDetalPage()),
          );
            },
            label: 'Новий запис',
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
        title: Text("Таблиця: detal"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.05),
              FutureBuilder(
                future: fetchDetals(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    _detals = snapshot.data;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: <DataColumn>[
                          DataColumn(
                            label: Text(
                              'Код деталі',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Категорія деталі',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Назва деталі',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Специфікація',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Наявна кількість',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Гуртова ціна',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                        rows: _detals
                            .map(
                              (_data) => DataRow(cells: [
                                DataCell(
                                  Text(
                                    _data.kodDetali,
                                    style: TextStyle(
                                      fontSize: height * 0.017,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                DataCell(
                                  Text(
                                    _data.kategoriyaDetali.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: height * 0.017,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                DataCell(
                                  Text(
                                    _data.nazvaDetali.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: height * 0.017,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                DataCell(
                                  Text(
                                    _data.specifikaciya.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: height * 0.017,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                DataCell(
                                  Text(
                                    _data.nayavnaKilkist.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: height * 0.017,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                DataCell(
                                  Text(
                                    _data.gurtovaCina.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: height * 0.017,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ]),
                            )
                            .toList(),
                      ),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _actionsButtons(),
    );
  }
}
