// Copyright 2020, Devunto LLC & Kevin Heredia, All rights reserved.

import 'package:flutter/material.dart';
import 'package:tilted_cup/backend/mail.dart';
import 'main.dart';
import 'backend/mail.dart';


class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String callName;
  String callEmail;
  String callNumber;
  String callDesc;

  TextEditingController controller = TextEditingController();

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
                color: Colors.grey[800],
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
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 20, spreadRadius: 2),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                        ),
                        onChanged: (name) {
                          callName = name;
                        },
                        validator: (name) {
                          if (name.length == 0) {
                            return "Cannot be empty";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 20, spreadRadius: 2),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      // color: Colors.white,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Number',
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (number) {
                          callNumber = number;
                        },
                        validator: (number) {
                          if (number.length == 0) {
                            return "Cannot be empty";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 20, spreadRadius: 2),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      // color: Colors.white,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                        controller: controller,
                        onChanged: (email) {
                          callEmail = email;
                        },
                        keyboardType: TextInputType.emailAddress,
                        validator: (email) {
                          if (email != "@") {
                            return "Cannot be empty";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 20, spreadRadius: 2),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      // color: Colors.white,
                      child: TextFormField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: 'Description',
                        ),
                        onChanged: (desc) {
                          callDesc = desc;
                        },
                        validator: (desc) {
                          if (desc.length == 0) {
                            return "Cannot be empty";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // logo container
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
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mail(
              name: callName,
              number: callNumber,
              email: callEmail,
              description: callDesc);
        },
        child: Icon(Icons.send),
      ),
    );
  }
}

Route _homePage() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MyHomePage(),
  );
}
