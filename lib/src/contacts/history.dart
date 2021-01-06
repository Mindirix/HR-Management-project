import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../welcomePage.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => WelcomePage(),
        ));
        break;
      case 'Settings': Fluttertoast.showToast(
        msg: 'Under Construction',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Logout', 'Settings'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Card(
              color: Colors.greenAccent,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image(
                      image: AssetImage('images/leave.png'),
                    ),
                    title: Text('Ahmed Mamdouh'),
                    subtitle: Text('Reason : Sickness'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        //width: MediaQuery.of(context).size.width,
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white),
                        child: Text(
                          'Amount : 7 days',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      Container(
                        //width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black.withAlpha(100),
                                  offset: Offset(2, 4),
                                  blurRadius: 8,
                                  spreadRadius: 2)
                            ],
                            color: Colors.white),
                        child: Text(
                          'Accepted',
                          style: TextStyle(
                              fontSize: 15, color: Colors.greenAccent),
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.greenAccent,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image(
                      image: AssetImage('images/leave.png'),
                    ),
                    title: Text('Mohamed Hany'),
                    subtitle: Text('Reason : Visiting Family'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        //width: MediaQuery.of(context).size.width,
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white),
                        child: Text(
                          'Amount : 2 days',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      Container(
                        //width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black.withAlpha(100),
                                  offset: Offset(2, 4),
                                  blurRadius: 8,
                                  spreadRadius: 2)
                            ],
                            color: Colors.white),
                        child: Text(
                          'Accepted',
                          style: TextStyle(
                              fontSize: 15, color: Colors.greenAccent),
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.redAccent,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image(
                      image: AssetImage('images/denied.png'),
                    ),
                    title: Text('Fatma Hossam'),
                    subtitle: Text('Reason : Cousin Birthday'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        //width: MediaQuery.of(context).size.width,
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white),
                        child: Text(
                          'Amount : 1 days',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      Container(
                        //width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.black.withAlpha(100),
                                  offset: Offset(2, 4),
                                  blurRadius: 8,
                                  spreadRadius: 2)
                            ],
                            color: Colors.white),
                        child: Text(
                          'Denied',
                          style:
                              TextStyle(fontSize: 15, color: Colors.redAccent),
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
