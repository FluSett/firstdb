import 'package:firstdb/pages/home/primary/primary.dart';
import 'package:firstdb/pages/home/tasks/questions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  Widget _currentPage = PrimaryPage();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void pageSelect(int value) {
    setState(() {
      _page = value;
      _currentPage = _pageChooser();
    });
  }

  void showSnackBar() {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text('Ващенюк Арсен'),
        backgroundColor: Theme.of(context).accentColor,
        behavior: SnackBarBehavior.floating,
        elevation: 6.0,
      ),
    );
  }

  Widget _pageChooser() {
    switch (_page) {
      case 0:
        return PrimaryPage();
        break;
      case 1:
        return QuestionsPage();
        break;
      default:
        return Container(
          child: Text('No page found!'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.27),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.034),
              Padding(
                padding: EdgeInsets.only(left: width * 0.034),
                child: IconButton(
                    icon: Icon(
                      Icons.info_outline,
                      size: height * 0.04,
                    ),
                    onPressed: showSnackBar,
                ),
              ),
              SizedBox(height: height * 0.09),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: width * 0.065),
                    GestureDetector(
                      onTap: () {
                        pageSelect(0);
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'Основне',
                              style: TextStyle(
                                fontSize: height * 0.04,
                                fontWeight: FontWeight.bold,
                                color: _page == 0 ? Colors.red : Color(0xffd3d3d3),
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            Container(
                              height: height * 0.01,
                              child: CircleAvatar(
                                backgroundColor: _page == 0 ? Colors.red : Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.056),
                    GestureDetector(
                      onTap: () {
                        pageSelect(1);
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'Питання',
                              style: TextStyle(
                                fontSize: height * 0.04,
                                fontWeight: FontWeight.bold,
                                color: _page == 1 ? Colors.red : Color(0xffd3d3d3),
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            Container(
                              height: height * 0.01,
                              child: CircleAvatar(
                                backgroundColor: _page == 1 ? Colors.red : Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: _currentPage,
    );
  }
}
