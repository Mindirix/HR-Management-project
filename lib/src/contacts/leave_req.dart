import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import '../welcomePage.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:intl/intl.dart';

class LeaveReq extends StatefulWidget {

  @override
  _LeaveReqState createState() => _LeaveReqState();
}
String _myActivity;
DateTime _selectedDate;
TextEditingController _textEditingController = TextEditingController();
final snackBar = SnackBar(content: Text('No leaves are available at the moment.'));

class _LeaveReqState extends State<LeaveReq> {
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
          children: [ Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5 , horizontal: 15),
                    child: Image(width: 100, height: 100, image: AssetImage('images/leave_req.png'))
                ),
                Container(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Create a leave request',
                      style: GoogleFonts.merriweather(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Image(image:AssetImage('images/name.png'),width: 20,height: 20,),
                      labelText: 'Name',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Image(image:AssetImage('images/manger.png'),width: 20,height: 20,),
                      Container(
                       width: 330,
                       child: Form(
                         child: Column(
                           children: [
                             Container(
                               padding: EdgeInsets.all(5),
                               child: DropDownFormField(
                                 titleText: 'Manger',
                                 hintText: 'please choose your manger',
                                 value: _myActivity,
                                 onSaved: (value) {
                                   setState(() {
                                     _myActivity = value;
                                   });
                                 },
                                 onChanged: (value) {
                                   setState(() {
                                     _myActivity = value;
                                   });
                                 },
                                 dataSource: [
                                   {
                                     "display": "Ahmed Megahed",
                                     "value": "Ahmed Megahed",
                                   },
                                   {
                                     "display": "Mohamed Ahmed",
                                     "value": "Mohamed Ahmed",
                                   },
                                 ],
                                 textField: 'display',
                                 valueField: 'value',
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                 ],
               ),

                Padding(
                  padding: const EdgeInsets.only(left: 15 , right: 15 , top: 10 , bottom: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Image(image:AssetImage('images/question.png'),width: 20,height: 20,),
                      labelText: 'Reason',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image:AssetImage('images/date.png'),width: 20,height: 20,),
                        Container(
                          width: 325,
                          child: TextField(
                            focusNode: AlwaysDisabledFocusNode(),
                            controller: _textEditingController,
                            onTap: () {
                              _selectDate(context);
                            },
                            decoration: InputDecoration(
                              labelText: 'Please input a starting date',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),

                Padding(
                  padding: const EdgeInsets.only(left: 15 , right: 15 , top: 15 , bottom: 30),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Image(image:AssetImage('images/days.png'),width: 20,height: 20,),
                      labelText: 'Number of days',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Container(
                    width: 180,
                    padding: EdgeInsets.symmetric(vertical: 13),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black.withAlpha(50),
                              offset: Offset(2, 4),
                              blurRadius: 8,
                              spreadRadius: 2)
                        ],
                        color: Colors.lightBlue),
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),

            ],
            ),
          ),
        ]
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////
_selectDate(BuildContext context) async {
  DateTime newSelectedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate != null ? _selectedDate : DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: Colors.black87,
              onPrimary: Colors.white,
              surface: Colors.grey,
              onSurface: Colors.white,
            ),
            dialogBackgroundColor: Colors.blue[500],
          ),
          child: child,
        );
      });
  if (newSelectedDate != null) {
    _selectedDate = newSelectedDate;
    _textEditingController
      ..text = DateFormat.yMMMd().format(_selectedDate)
      ..selection = TextSelection.fromPosition(TextPosition(
          offset: _textEditingController.text.length,
          affinity: TextAffinity.upstream));
  }
}


class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}