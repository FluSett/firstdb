import 'dart:convert';

import 'package:firstdb/db/get_data.dart';
import 'package:firstdb/models/detal_api.dart';
import 'package:firstdb/widgets/answers.dart';
import 'package:flutter/material.dart';
import 'package:firstdb/db/get_answers.dart';
import 'package:firstdb/models/answers_api.dart';
import 'package:http/http.dart' as http;

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
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

  bool _isActive1 = false;
  bool _isActive2 = false;
  bool _isActive3 = false;
  bool _isActive4 = false;
  bool _isActive5 = false;
  bool _isActive6 = false;
  bool _isActive7 = false;
  bool _isActive8 = false;
  bool _isActive9 = false;
  bool _isActive10 = false;

  Widget widgetAnswer1(
      double height, double width, String _mysql, String _question) {
    return ExpansionPanelList(
      expansionCallback: (index, expanded) {
        setState(() {
          _isActive1 = !_isActive1;
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
          isExpanded: _isActive1,
        ),
      ],
    );
  }

  Widget widgetAnswer2(
      double height, double width, String _mysql, String _question) {
    return ExpansionPanelList(
      expansionCallback: (index, expanded) {
        setState(() {
          _isActive2 = !_isActive2;
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
                    future: fetchAnswer2(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        _answer2 = snapshot.data;
                        return Column(children: [
                          Text(
                            _answer2
                                .map((item) => item.answer2)
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
          isExpanded: _isActive2,
        ),
      ],
    );
  }

  Widget widgetAnswer3(
      double height, double width, String _mysql, String _question) {
    return ExpansionPanelList(
      expansionCallback: (index, expanded) {
        setState(() {
          _isActive3 = !_isActive3;
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
                    future: fetchAnswer3(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        _answer3 = snapshot.data;
                        return Column(children: [
                          Text(
                            _answer3
                                .map((item) => item.answer3)
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
          isExpanded: _isActive3,
        ),
      ],
    );
  }

  Widget widgetAnswer4(
      double height, double width, String _mysql, String _question) {
    return ExpansionPanelList(
      expansionCallback: (index, expanded) {
        setState(() {
          _isActive4 = !_isActive4;
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
                    future: fetchAnswer4(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        _answer4 = snapshot.data;
                        return Column(children: [
                          Text(
                            _answer4
                                .map((item) => item.answer4)
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
          isExpanded: _isActive4,
        ),
      ],
    );
  }

  Widget widgetAnswer5(
      double height, double width, String _mysql, String _question) {
    return ExpansionPanelList(
      expansionCallback: (index, expanded) {
        setState(() {
          _isActive5 = !_isActive5;
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
                    future: fetchAnswer5(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        _answer5 = snapshot.data;
                        return Column(children: [
                          Row(
                            children: [
                              SizedBox(width: width * 0.4),
                              Text(
                                _answer5
                                    .map((item) => item.answer5X1)
                                    .toList()
                                    .toString(),
                                style: TextStyle(fontSize: height * 0.03),
                              ),
                              SizedBox(width: width * 0.04),
                              Text(
                                _answer5
                                    .map((item) => item.answer5X2)
                                    .toList()
                                    .toString(),
                                style: TextStyle(fontSize: height * 0.03),
                              ),
                            ],
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
          isExpanded: _isActive5,
        ),
      ],
    );
  }

  Widget widgetAnswer6(
      double height, double width, String _mysql, String _question) {
    return ExpansionPanelList(
      expansionCallback: (index, expanded) {
        setState(() {
          _isActive6 = !_isActive6;
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
                    future: fetchAnswer6(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        _answer6 = snapshot.data;
                        return Column(children: [
                          Text(
                            _answer6
                                .map((item) => item.answer6)
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
          isExpanded: _isActive6,
        ),
      ],
    );
  }

  Widget widgetAnswer7(
      double height, double width, String _mysql, String _question) {
    return ExpansionPanelList(
      expansionCallback: (index, expanded) {
        setState(() {
          _isActive7 = !_isActive7;
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
                Column(
                  children: [
                    FutureBuilder(
                        future: fetchAnswer7(),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
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
                                              _data.answer7X2
                                                  .toString()
                                                  .toUpperCase(),
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
                ),
                SizedBox(height: height * 0.03),
              ],
            ),
          ),
          isExpanded: _isActive7,
        ),
      ],
    );
  }

  Widget widgetAnswer8(
      double height, double width, String _mysql, String _question) {
    return ExpansionPanelList(
      expansionCallback: (index, expanded) {
        setState(() {
          _isActive8 = !_isActive8;
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
                    future: fetchAnswer8(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        _answer8 = snapshot.data;
                        return Column(children: [
                          Text(
                            _answer8
                                .map((item) => item.answer8)
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
          isExpanded: _isActive8,
        ),
      ],
    );
  }

  Widget widgetAnswer9(
      double height, double width, String _mysql, String _question) {
    return ExpansionPanelList(
      expansionCallback: (index, expanded) {
        setState(() {
          _isActive9 = !_isActive9;
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
                    future: fetchAnswer9(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        _answer9 = snapshot.data;
                        return Column(children: [
                          Text(
                            _answer9
                                .map((item) => item.answer9)
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
          isExpanded: _isActive9,
        ),
      ],
    );
  }

  Widget widgetAnswer10(
      double height, double width, String _mysql, String _question) {
    return ExpansionPanelList(
      expansionCallback: (index, expanded) {
        setState(() {
          _isActive10 = !_isActive10;
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
                    future: fetchAnswer10(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        _answer10 = snapshot.data;
                        return Column(children: [
                          Text(
                            _answer10
                                .map((item) => item.answer10)
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
          isExpanded: _isActive10,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            widgetAnswer1(
                height,
                width,
                'SELECT SUM(nayavnaKilkist) FROM detal;',
                '1: Скільки деталей в наявності?'),
            SizedBox(height: height * 0.03),
            widgetAnswer2(
              height,
              width,
              'SELECT SUM(nayavnaKilkist * gurtovaCina) FROM detal;',
              '2: На яку суму всі наявні деталі?',
            ),
            SizedBox(height: height * 0.03),
            widgetAnswer3(
              height,
              width,
              'SELECT nayavnaKilkist FROM detal WHERE kodDetali = 1002;',
              '3: Скільки таких деталей в наявності?',
            ),
            SizedBox(height: height * 0.03),
            widgetAnswer4(
                height,
                width,
                'SELECT SUM(detal.gurtovaCina) FROM detal, reestr where reestr.kodDetali = detal.kodDetali;',
                '4: Скільки ми заробили?'),
            SizedBox(height: height * 0.03),
            widgetAnswer5(
                height,
                width,
                'SELECT kodDetali, COUNT(*) FROM reestr GROUP BY kodDetali ORDER BY 2 DESC LIMIT 1;',
                '5: Яка найпопулярніша деталь?'),
            SizedBox(height: height * 0.03),
            widgetAnswer6(height, width, 'SELECT COUNT(*) FROM reestr;',
                '6: Яка кількість проданих деталей?'),
            SizedBox(height: height * 0.03),
            widgetAnswer7(
                height,
                width,
                'SELECT kodDetali, dataZamovlennya FROM reestr WHERE dataZamovlennya BETWEEN \'2000.10.10\' AND \'2015.01.01\' GROUP BY dataZamovlennya ORDER BY dataZamovlennya;',
                '7: Яка кількість проданого товару за період часу?'),
            SizedBox(height: height * 0.03),
            widgetAnswer8(
                height,
                width,
                'SELECT kodDetali FROM detal WHERE nayavnaKilkist = 0;',
                '8: Яких деталей немає в наявності?'),
            SizedBox(height: height * 0.03),
            widgetAnswer9(
                height,
                width,
                'SELECT kodDetali FROM detal ORDER BY gurtovaCina DESC LIMIT 1;',
                '9: Яка найдорожча деталь?'),
            SizedBox(height: height * 0.03),
            widgetAnswer10(
                height,
                width,
                'SELECT kodDetali FROM detal ORDER BY gurtovaCina LIMIT 1;',
                '10: Яка найдешевша деталь?'),
          ],
        ),
      ),
    );
  }
}
