import 'package:firstdb/db/get_answers.dart';
import 'package:flutter/material.dart';
import 'package:firstdb/models/answers_api.dart';

class Answers extends StatefulWidget {
  @override
  AnswersState createState() => AnswersState();
}

class AnswersState extends State<Answers> {
  List<Answer1> _answer1;
  List<Answer2> _answer2;
  List<Answer3> _answer3;
  List<Answer4> _answer4;
  List<Answer5> _answer5;
  List<Answer6> _answer6;
  List<Answer7> _answer7;
  List<Answer8> _answer8;
  List<Answer9> _answer9;
  List<Answer10> _answer10;

  List a1;
  List a2;
  List a3;
  List a4;
  List a5;
  List a6;
  List a7;
  List a8;
  List a9;
  List a10;

  Widget widgetAnswer1(
      double height, double width, String _mysql, String _question) {
    bool _isActive = false;
    return ExpansionPanelList(
      expansionCallback: (index, expanded) {
        setState(() {
        _isActive = !_isActive;
        });
      },
      children: <ExpansionPanel>[
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text(
                _question,
                style: TextStyle(
                  fontSize: height * 0.025,
                ),
              ),
            );
          },
          body: Container(
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: width * 0.04, right: width * 0.02),
                  child: Text(
                    _mysql,
                    style: TextStyle(
                      fontSize: height * 0.025,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                FutureBuilder(
                    future: fetchAnswer1(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        _answer1 = snapshot.data;
                        return Column(children: [
                          Text(
                            _answer1
                                .map((item) => item.answer1)
                                .toList()
                                .toString(),
                            style: TextStyle(fontSize: height * 0.03),
                          )
                        ]);
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),
                SizedBox(height: height * 0.03),
              ],
            ),
          ),
          isExpanded: _isActive,
        ),
      ],
    );
  }

  Widget widgetAnswer2(double height) {
    return FutureBuilder(
        future: fetchAnswer2(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            _answer2 = snapshot.data;
            return Column(children: [
              Text(
                _answer2.map((item) => item.answer2).toList().toString(),
                style: TextStyle(fontSize: height * 0.03),
              )
            ]);
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Widget widgetAnswer3(double height) {
    return FutureBuilder(
        future: fetchAnswer1(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            _answer1 = snapshot.data;
            return Column(children: [
              Text(
                _answer1.map((item) => item.answer1).toList().toString(),
                style: TextStyle(fontSize: height * 0.03),
              )
            ]);
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Widget widgetAnswer4(double height) {
    return FutureBuilder(
        future: fetchAnswer4(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            _answer4 = snapshot.data;
            return Column(children: [
              Text(
                _answer4.map((item) => item.answer4).toList().toString(),
                style: TextStyle(fontSize: height * 0.03),
              )
            ]);
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Widget widgetAnswer5(double height, double width) {
    return FutureBuilder(
        future: fetchAnswer5(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            _answer5 = snapshot.data;
            return Column(children: [
              Row(
                children: [
                  SizedBox(width: width * 0.4),
                  Text(
                    _answer5.map((item) => item.answer5X1).toList().toString(),
                    style: TextStyle(fontSize: height * 0.03),
                  ),
                  SizedBox(width: width * 0.04),
                  Text(
                    _answer5.map((item) => item.answer5X2).toList().toString(),
                    style: TextStyle(fontSize: height * 0.03),
                  ),
                ],
              )
            ]);
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Widget widgetAnswer6(double height) {
    return FutureBuilder(
        future: fetchAnswer6(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            _answer6 = snapshot.data;
            return Column(children: [
              Text(
                _answer6.map((item) => item.answer6).toList().toString(),
                style: TextStyle(fontSize: height * 0.03),
              )
            ]);
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Widget widgetAnswer7(double height, double width, BuildContext context) {
    DateTime _firstDate;
    DateTime _secondDate;
    return Column(
      children: [
        Center(
          child: Text(
            'Виберіть дату',
            style: TextStyle(fontSize: height * 0.03),
          ),
        ),
        SizedBox(height: height * 0.04),
        Row(
          children: [
            SizedBox(width: width * 0.1),
            Container(
              child: Column(
                children: [
                  Text(
                    'З цієї дати',
                    style: TextStyle(fontSize: height * 0.03),
                  ),
                  RaisedButton(
                    color: Colors.blueAccent,
                    child: Text(
                      'Вибрати дату',
                      style: TextStyle(fontSize: height * 0.03),
                    ),
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1990),
                        lastDate: DateTime(2021),
                      ).then((value) {
                        _firstDate = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width * 0.07,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'До цієї дати',
                    style: TextStyle(fontSize: height * 0.03),
                  ),
                  RaisedButton(
                    color: Colors.blueAccent,
                    child: Text(
                      'Вибрати дату',
                      style: TextStyle(fontSize: height * 0.03),
                    ),
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1990),
                        lastDate: DateTime(2021),
                      ).then((value) {
                        _secondDate = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        FutureBuilder(
            future: fetchAnswer7(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                _answer7 = snapshot.data;
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
                          'Дата замовлення',
                          style: TextStyle(
                            fontSize: width * 0.04,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                    rows: _answer7
                        .map(
                          (_data) => DataRow(
                            cells: [
                              DataCell(
                                Text(
                                  _data.answer7X1.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: height * 0.03,
                                  ),
                                ),
                                onTap: () {},
                              ),
                              DataCell(
                                Text(
                                  _data.answer7X2.toString().toUpperCase(),
                                  style: TextStyle(
                                    fontSize: height * 0.03,
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                );
              } else {
                return CircularProgressIndicator();
              }
            }),
      ],
    );
  }

  Widget widgetAnswer8(double height) {
    return FutureBuilder(
        future: fetchAnswer8(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            _answer8 = snapshot.data;
            return Column(children: [
              Text(
                _answer8.map((item) => item.answer8).toList().toString(),
                style: TextStyle(fontSize: height * 0.03),
              )
            ]);
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Widget widgetAnswer9(double height) {
    return FutureBuilder(
        future: fetchAnswer9(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            _answer9 = snapshot.data;
            return Column(children: [
              Text(
                _answer9.map((item) => item.answer9).toList().toString(),
                style: TextStyle(fontSize: height * 0.03),
              )
            ]);
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Widget widgetAnswer10(double height) {
    return FutureBuilder(
        future: fetchAnswer10(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            _answer10 = snapshot.data;
            return Column(children: [
              Text(
                _answer10.map((item) => item.answer10).toList().toString(),
                style: TextStyle(fontSize: height * 0.03),
              )
            ]);
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Widget build(BuildContext context) {
    return Scaffold();
  }
}
