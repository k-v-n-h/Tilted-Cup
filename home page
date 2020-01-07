// Copyright 2020, Devunto LLC & Kevin Heredia, All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tilted_cup/gallerypage.dart';
import 'servicespage.dart';
import 'aboutpage.dart';
import 'contactpage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of the application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TITLED CUP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

const IconData menu = IconData(0xe5d2, fontFamily: 'MaterialIcons');

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _height = 450;

  galleryAnimated() {
    _height = _height == 450 ? 0 : 450;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
          
            // contact container
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'CONTACT',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.only(
                        left: 55, right: 55, top: 45, bottom: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      // side: BorderSide(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(_contactPage());
                    },
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              margin: EdgeInsets.only(bottom: 50),
              constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height - 0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20.0,
                    spreadRadius: 5.0,
                  ),
                ],
                color: Colors.grey[800],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
            ),

            // about container
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'ABOUT',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    padding: EdgeInsets.only(
                        left: 90, right: 90, top: 45, bottom: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      // side: BorderSide(color: Colors.black)
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        _aboutPage(),
                      );
                    },
                  ),
                ],
              ),
              padding: EdgeInsets.only(
                left: 5,
                right: 5,
                top: 5,
                bottom: 5,
              ),
              margin: EdgeInsets.only(bottom: 175),
              constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height - 100),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20.0,
                    spreadRadius: 5.0,
                  ),
                ],
                color: Colors.greenAccent[700],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
            ),

            // services container
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'SERVICES',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      left: 55,
                      right: 55,
                      top: 45,
                      bottom: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      // side: BorderSide(color: Colors.black)
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        _servicesRoute(),
                      );
                    },
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              margin: EdgeInsets.only(bottom: 310),
              constraints: BoxConstraints.expand(
                height: MediaQuery.of(context).size.height - 200,
              ),
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
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),

            // gallery container
            AnimatedContainer(
              duration: Duration(seconds: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'GALLERY',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    padding: EdgeInsets.only(
                        left: 65, right: 65, top: 30, bottom: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      // side: BorderSide(color: Colors.black),
                    ),
                    onPressed: () {
                      // galleryAnimated();
                      Navigator.of(context).push(
                        _galleryRoute(),
                      );
                    },
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              margin: EdgeInsets.only(bottom: _height),
              constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height - _height),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(blurRadius: 20.0, spreadRadius: 5.0),
                ],
                color: Color(0xff14A8E4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),

            // logo container
            Container(
              padding:
                  EdgeInsets.only(left: 20, bottom: 20, right: 20, top: 20),
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

Route _galleryRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => GalleryPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, -1);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      transitionDuration: Duration(milliseconds: 450));
}

Route _servicesRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ServicesPage(),
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
      transitionDuration: Duration(milliseconds: 450));
}

Route _aboutPage() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => AboutPage(),
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
    transitionDuration: Duration(milliseconds: 450),
  );
}

Route _contactPage() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ContactPage(),
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
    transitionDuration: Duration(milliseconds: 450),
  );
}
