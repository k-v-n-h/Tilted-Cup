// Copyright 2020, Devunto LLC & Kevin Heredia, All rights reserved.

import 'package:flutter/material.dart';
import 'package:tilted_cup/images/imageloop.dart' as prefix0;
import 'package:tilted_cup/main.dart';
import 'images/imageloop.dart';

Route _homePage() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MyHomePage(),
  );
}

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  double _height = 0;
  galleryAnimated() {
    _height = _height == 0 ? 450 : 0;
    Navigator.of(context).pop(_homePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              // duration: Duration(seconds: 5),
              padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              margin: EdgeInsets.only(bottom: _height),
              constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height - _height),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20.0,
                    spreadRadius: 5.0,
                  ),
                ],
                color: Colors.lightBlue.shade400,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height - 600), //top: 200
              // constraints: BoxConstraints.expand(
              //   height: MediaQuery.of(context).size.height - 0,
              // ),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          prefix0.image(picture: 1),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          prefix0.image(picture: 1),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          image(picture: 2),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          image(picture: 3),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(
                          prefix0.image(picture: 4),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(prefix0.image(picture: 5)),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(prefix0.image(picture: 6)),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(prefix0.image(picture: 7)),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(prefix0.image(picture: 8)),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(prefix0.image(picture: 9)),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(prefix0.image(picture: 10)),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
                    child: Wrap(
                      children: <Widget>[
                        Image.network(prefix0.image(picture: 11)),
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
                  // alignment: Alignment(0, 1.35),
                  //1.35
                  child: Icon(menu, size: 38.0), // 38.0
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
                  //galleryAnimated();
                  Navigator.of(context).pop(_homePage());
                },
              ),
              padding:
                  EdgeInsets.only(left: 10, bottom: 5.0, right: 10, top: 40),
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
