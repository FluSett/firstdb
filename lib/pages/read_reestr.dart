import 'dart:ui';

import 'package:firstdb/db/get_data.dart';
import 'package:firstdb/models/reestr_api.dart';
import 'package:firstdb/pages/mysql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'add_reestr.dart';

class ReadReestrPage extends StatefulWidget {
  @override
  _ReadReestrPageState createState() => _ReadReestrPageState();
}

class _ReadReestrPageState extends State<ReadReestrPage> {
  List<Reestr> _reestr;

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
            MaterialPageRoute(builder: (context) => MySqlPage(data: "SELECT * FROM reestr;")),
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
            MaterialPageRoute(builder: (context) => AddReestrPage()),
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
        title: Text("Таблиця: reestr"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.05),
              FutureBuilder(
                future: fetchReestr(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    _reestr = snapshot.data;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: <DataColumn>[
                          DataColumn(
                            label: Text(
                              'ID',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
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
                              'П.І.Б',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Замовлена деталь',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Назва категорії',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Дата замовлення',
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                        rows: _reestr
                            .map(
                              (_data) => DataRow(cells: [
                                DataCell(
                                  Text(
                                    _data.id,
                                    style: TextStyle(
                                      fontSize: height * 0.017,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                DataCell(
                                  Text(
                                    _data.kodDetali.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: height * 0.017,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                DataCell(
                                  Text(
                                    _data.pib.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: height * 0.017,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                DataCell(
                                  Text(
                                    _data.zamovlenaDetal.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: height * 0.017,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                DataCell(
                                  Text(
                                    _data.nazvaKategoriyi.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: height * 0.017,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                DataCell(
                                  Text(
                                    _data.dataZamovlennya
                                        .toString()
                                        .toUpperCase(),
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
