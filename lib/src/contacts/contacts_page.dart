import 'package:firebase_project/main.dart';
import 'package:firebase_project/src/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_project/src/loginPage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_project/src/contacts/contactsinfo/contact_1.dart';
import 'package:firebase_project/src/contacts/contactsinfo/contact_2.dart';
import 'package:firebase_project/src/contacts/contactsinfo/contact_3.dart';
import 'package:firebase_project/src/contacts/contactsinfo/contact_4.dart';
import 'package:firebase_project/src/contacts/contactsinfo/contact_5.dart';
import 'package:firebase_project/src/contacts/contactsinfo/contact_6.dart';
import 'package:firebase_project/src/contacts/contactsinfo/contact_7.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
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
        title: Text('Contacts'),
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
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image(
                      image: AssetImage('images/man.png'),
                    ),
                    title: Text('Ahmed Mamdouh'),
                    subtitle: Text('Mobile Developer'),
                    trailing: Icon(Icons.more_vert),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Contact_1(),
                      ));
                    }
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton.icon(
                        color: Colors.white,
                        icon: Icon(Icons.call),
                        label: Text('Call'),
                        onPressed: () => launch("tel://12954786319"),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    leading: Image(
                      image: AssetImage('images/woman.png'),
                    ),
                    title: Text('Fatma Hossam'),
                    subtitle: Text('Mobile Developer'),
                    trailing: Icon(Icons.more_vert),
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Contact_2(),
                        ));
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton.icon(
                        color: Colors.white,
                        icon: Icon(Icons.call),
                        label: Text('Call'),
                        onPressed: () => launch("tel://98643157892"),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    leading: Image(
                      image: AssetImage('images/man.png'),
                    ),
                    title: Text('Mohamed Hany'),
                    subtitle: Text('Mobile Developer'),
                    trailing: Icon(Icons.more_vert),
                     onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => Contact_3(),
                       ));
                     },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton.icon(
                        color: Colors.white,
                        icon: Icon(Icons.call),
                        label: Text('Call'),
                        onPressed: () => launch("tel://5986431785"),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    leading: Image(
                      image: AssetImage('images/man.png'),
                    ),
                    title: Text('Ahmed Megahed'),
                    subtitle: Text('Instructor'),
                    trailing: Icon(Icons.more_vert),
                     onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => Contact_4(),
                       ));
                     },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton.icon(
                        color: Colors.white,
                        icon: Icon(Icons.call),
                        label: Text('Call'),
                        onPressed: () => launch("tel://59647679637"),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    leading: Image(
                      image: AssetImage('images/man.png'),
                    ),
                    title: Text('Mohamed Ahmed'),
                    subtitle: Text('Web Developer'),
                    trailing: Icon(Icons.more_vert),
                     onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => Contact_5(),
                       ));
                     },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton.icon(
                        color: Colors.white,
                        icon: Icon(Icons.call),
                        label: Text('Call'),
                        onPressed: () => launch("tel://96531486531"),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    leading: Image(
                      image: AssetImage('images/woman.png'),
                    ),
                    title: Text('Esraa Ahmed'),
                    subtitle: Text('Backend developer'),
                    trailing: Icon(Icons.more_vert),
                     onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => Contact_6(),
                       ));
                     },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton.icon(
                        color: Colors.white,
                        icon: Icon(Icons.call),
                        label: Text('Call'),
                        onPressed: () => launch("tel://8965317547"),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   ListTile(
                    leading: Image(
                      image: AssetImage('images/man.png'),
                    ),
                    title: Text('Mahmoud Salama'),
                    subtitle: Text('Game Developer'),
                    trailing: Icon(Icons.more_vert),
                     onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) => Contact_7(),
                       ));
                     },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton.icon(
                        color: Colors.white,
                        icon: Icon(Icons.call),
                        label: Text('Call'),
                        onPressed: () => launch("tel://54329687456"),
                      ),
                      const SizedBox(width: 8),
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
