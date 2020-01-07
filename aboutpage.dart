// Copyright 2019, Devunto LLC & Kevin Heredia, All rights reserved.

import 'package:flutter/material.dart';
import 'package:tilted_cup/aboutText.dart';
import 'main.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override

  



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              margin: EdgeInsets.only(bottom: 0),
              constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height - 0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20.0,
                    spreadRadius: 5.0,
                  ),
                ],
                color: Colors.greenAccent[400],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height - 600),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 20, spreadRadius: 2),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    margin: EdgeInsets.only(
                        left: 15, right: 15, bottom: 35, top: 15),
                    child: Text(
                      "YOU'RE IN GOOD SPIRITS",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     boxShadow: [
                  //       BoxShadow(blurRadius: 20, spreadRadius: 2),
                  //     ],
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.only(
                  //         bottomLeft: Radius.circular(20),
                  //         bottomRight: Radius.circular(20),
                  //         topLeft: Radius.circular(20),
                  //         topRight: Radius.circular(20)),
                  //   ),
                  //   margin: EdgeInsets.only(left: 15, right: 15, bottom: 35),
                  //   child: Text(
                  //       "\nBased in Salt Lake City, \n\n" +
                  //           "Tilted Cup's strategy for success is to maintain core values based on credibility, " +
                  //           "safety, professionalism, integrity, communication, and a competent knowledge base.\n",
                  //       style: TextStyle(
                  //           fontSize: 18, fontWeight: FontWeight.bold),
                  //       textAlign: TextAlign.center),
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 2)],
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.only(
                  //         bottomLeft: Radius.circular(20),
                  //         bottomRight: Radius.circular(20),
                  //         topLeft: Radius.circular(20),
                  //         topRight: Radius.circular(20)),
                  //   ),
                  //   margin: EdgeInsets.only(left: 15, right: 15, bottom: 35),
                  //   child: Text(
                  //       '\nYou are not only selecting a bartender.' +
                  //           ' You are choosing a partner in creating a safe and memorable event.\n',
                  //       style: TextStyle(
                  //           fontSize: 18, fontWeight: FontWeight.bold),
                  //       textAlign: TextAlign.center),
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 2)],
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.only(
                  //         bottomLeft: Radius.circular(20),
                  //         bottomRight: Radius.circular(20),
                  //         topLeft: Radius.circular(20),
                  //         topRight: Radius.circular(20)),
                  //   ),
                  //   margin: EdgeInsets.only(left: 15, right: 15, bottom: 35),
                  //   child: Text(
                  //       '\nWith over 10 years industry experience, ' +
                  //           ' we have the knowledge needed to create a fun, yet safe atmosphere.\n',
                  //       style: TextStyle(
                  //           fontSize: 18, fontWeight: FontWeight.bold),
                  //       textAlign: TextAlign.center),
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 2)],
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.only(
                  //         bottomLeft: Radius.circular(20),
                  //         bottomRight: Radius.circular(20),
                  //         topLeft: Radius.circular(20),
                  //         topRight: Radius.circular(20)),
                  //   ),
                  //   margin: EdgeInsets.only(left: 15, right: 15, bottom: 35),
                  //   child: Text(
                  //       '\n We understand, when it comes to  serving alcohol, the safety of your guests is of the utmost importance. ' +
                  //           ' \n\n We take on the responsibility of making sure our staff is trained not only to pour great cocktails, ' +
                  //           'but to be able to identify any signs of over intoxication. \n\nYou can be confident your guest will be happy, and most importantly, safe!\n',
                  //       style: TextStyle(
                  //           fontSize: 18, fontWeight: FontWeight.bold),
                  //       textAlign: TextAlign.center),
                  // ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 2)],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 35),
                    child: Text(aboutText,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 2)],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 35),
                    child: Text(
                        "\nAll of Tilted Cup's bartenders have both\n\n Utah TIPS and food handlers certifications.\n\nTilted Cup can also provide servers to meet your needs.\n",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 2)],
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.only(
                  //         bottomLeft: Radius.circular(20),
                  //         bottomRight: Radius.circular(20),
                  //         topLeft: Radius.circular(20),
                  //         topRight: Radius.circular(20)),
                  //   ),
                  //   margin: EdgeInsets.only(left: 15, right: 15, bottom: 35),
                  //   child: Text( aboutText,
                  //       style: TextStyle(
                  //           fontSize: 18, fontWeight: FontWeight.bold),
                  //       textAlign: TextAlign.center),
                  // ),
                ],
              ),
            ),
            Container(
              child: FlatButton(
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height - 685), //top: 200
                  constraints: BoxConstraints.expand(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                  // alignment: Alignment(0, 1.30),
                  child: Icon(menu, size: 38),
                ),
                padding:
                    EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop(_homePage());
                },
              ),
              padding: EdgeInsets.only(left: 10, bottom: 3, right: 10, top: 40),
              margin: EdgeInsets.only(bottom: 590),
              constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height - 590),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(blurRadius: 20.0, spreadRadius: 5.0),
                ],
                image: DecorationImage(
                  image: ExactAssetImage('images/tiltedcup.jpg'),
                  alignment: Alignment(0, -0.35),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _homePage() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MyHomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, -1), end = Offset.zero;
      var curve2 = Curves.easeOut;

      var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve2));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
