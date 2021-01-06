import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(width: 200, height: 200, image: AssetImage('images/woman.png')),
            Container(
              //width: MediaQuery.of(context).size.width,
                margin:
                EdgeInsets.only(top: 50, bottom: 15, left: 30, right: 30),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black26),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Name : ',
                      style: GoogleFonts.merriweather(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueAccent[400],
                      ),
                      children: [
                        TextSpan(
                          text: 'Esraa Ahmed',
                          style: TextStyle(color: Colors.black, fontSize: 23),
                        ),
                      ]),
                )),
            Container(
              //width: MediaQuery.of(context).size.width,
                margin:
                EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black26),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Job : ',
                      style: GoogleFonts.merriweather(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueAccent[400],
                      ),
                      children: [
                        TextSpan(
                          text: 'Backend developer',
                          style: TextStyle(color: Colors.black, fontSize: 23),
                        ),
                      ]),
                )),
            Container(
              //width: MediaQuery.of(context).size.width,
                margin:
                EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black26),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Number : ',
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueAccent[400],
                      ),
                      children: [
                        TextSpan(
                          text: '8965317547',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ]),
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              child: InkWell(
                onTap: () {
                  launch("tel://8965317547");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black.withAlpha(80),
                            offset: Offset(1, 3),
                            blurRadius: 7,
                            spreadRadius: 2)
                      ],
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.call),
                      Text(
                        'Call',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
