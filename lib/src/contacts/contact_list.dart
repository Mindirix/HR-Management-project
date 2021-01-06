import 'package:firebase_project/main.dart';
import 'package:firebase_project/src/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_project/src/loginPage.dart';
import 'package:firebase_project/src/contacts/contacts_page.dart';
import 'package:firebase_project/src/contacts/history.dart';
import 'package:firebase_project/src/contacts/leave_req.dart';
//this page is for the BottomNavigationBar
class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {

  //the pages with data and the starting index 0 for the first page
  int _currentIndex = 0;
  final List<Widget> _children = [
    ContactsPage(),
    LeaveReq(),
    History(),
  ];

  //method for ontap that changes current index to the other pages
  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
           //body is the children which is the pages
          body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        onTap: onTappedBar, //method
        currentIndex: _currentIndex, //define starting index here

        selectedItemColor: Colors.blue,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone_rounded),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.request_page),
            label: 'Leave Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
      )
    );
  }
}




