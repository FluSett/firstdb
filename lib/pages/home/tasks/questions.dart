import 'package:firstdb/widgets/answers.dart';
import 'package:flutter/material.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
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


  _expansionPanel(String _question, String _mysql, Widget _widget, bool act) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                  padding: EdgeInsets.only(left: width * 0.04, right: width * 0.02),
                child: Text(
                  _mysql,
                  style: TextStyle(
                    fontSize: height * 0.025,
                  ),
                ),),
                SizedBox(height: height * 0.02),
                _widget,
                SizedBox(height: height * 0.03),
              ],
            ),
          ),
          isExpanded: _isActive1,
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
            _expansionPanel(
              '1: Скільки деталей в наявності?',
              'SELECT SUM(nayavnaKilkist) FROM detal;',
              Answers().widgetAnswer1(height),
              _isActive1
            ),
            SizedBox(height: height * 0.03),
            _expansionPanel(
              '2: На яку суму всі наявні деталі?',
              'SELECT SUM(nayavnaKilkist * gurtovaCina) FROM detal;',
              Answers().widgetAnswer2(height),
              _isActive2
            ),
            SizedBox(height: height * 0.03),
            _expansionPanel('3: Скільки таких деталей в наявності? /Не готово/',
             'SELECT nayavnaKilkist FROM detal WHERE kodDetali = \$kodDetali;',
             Answers().widgetAnswer3(height),
             _isActive3
            ),
            SizedBox(height: height * 0.03),
            _expansionPanel('4: Скільки ми заробили?',
             'SELECT SUM(detal.gurtovaCina) FROM detal, reestr where reestr.kodDetali = detal.kodDetali;',
             Answers().widgetAnswer4(height),
             _isActive4
            ),
            SizedBox(height: height * 0.03),
            _expansionPanel(
              '5: Яка найпопулярніша деталь?',
               'SELECT kodDetali, COUNT(*) FROM reestr GROUP BY kodDetali ORDER BY 2 DESC LIMIT 1;',
               Answers().widgetAnswer5(height, width),
               _isActive5
            ),
            SizedBox(height: height * 0.03),
            _expansionPanel(
              '6: Яка кількість проданих деталей?',
               'SELECT COUNT(*) FROM reestr;',
               Answers().widgetAnswer6(height),
               _isActive6
               ),
            SizedBox(height: height * 0.03),
            _expansionPanel(
                  '7: Яка кількість проданого товару за період часу? /Не готово',
                   'SELECT kodDetali, dataZamovlennya FROM reestr WHERE dataZamovlennya BETWEEN \'2000.10.10\' AND \'2015.01.01\' GROUP BY dataZamovlennya ORDER BY dataZamovlennya;',
                   Answers().widgetAnswer7(height, width, context),
                   _isActive7
                   ),
            SizedBox(height: height * 0.03),
            _expansionPanel(
              '8: Яких деталей немає в наявності?',
               'SELECT kodDetali FROM detal WHERE nayavnaKilkist = 0;',
               Answers().widgetAnswer8(height),
               _isActive8
               ),
            SizedBox(height: height * 0.03),
            _expansionPanel(
              '9: Яка найдорожча деталь?',
              'SELECT kodDetali FROM detal ORDER BY gurtovaCina DESC LIMIT 1;',
              Answers().widgetAnswer9(height),
              _isActive9
              ),
            SizedBox(height: height * 0.03),
            _expansionPanel(
              '10: Яка найдешевша деталь?',
              'SELECT kodDetali FROM detal ORDER BY gurtovaCina LIMIT 1;',
              Answers().widgetAnswer10(height),
              _isActive10
              ),
          ],
        ),
      ),
    );
  }
}
