// Copyright 2019, Devunto LLC & Kevin Heredia, All rights reserved.

import 'package:flutter/material.dart';
import 'package:tilted_cup/main.dart';

class ServicesPage extends StatelessWidget {
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
                color: Colors.orangeAccent[400],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
            ),

            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height - 600),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.asset('images/bartend.jpg'),
                        ListTile(
                          // contentPadding: EdgeInsets.only(left: 20),
                          title: Text(
                            'BARTENDING',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          subtitle: Text(
                            '*Spanish speaking bartenders available*',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.asset('images/cater.jpg'),
                        ListTile(
                          title: Text(
                            'CATERING',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          subtitle: Text(
                            'Suitable to your needs',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.asset('images/chef.jpg'),
                        ListTile(
                          title: Text(
                            'Personal Chef',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          subtitle: Text(
                            'Fine Culinary',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                  child: Icon(menu, size: 38.0),
                ),
                padding:
                    EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  // side: BorderSide(color: Colors.black)
                ),
                onPressed: () {
                  Navigator.of(context).pop(_homePage());
                },
              ),
              padding:
                  EdgeInsets.only(left: 10, bottom: 3.0, right: 10, top: 40),
              margin: EdgeInsets.only(bottom: 590),
              constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height - 550),
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
                    bottomRight: Radius.circular(40)),
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
      var begin = Offset(0.0, 1), end = Offset.zero;
      var curve2 = Curves.easeOut;

      var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve2));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: Duration(milliseconds: 500),
  );
}
