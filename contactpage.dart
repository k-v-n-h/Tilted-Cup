// Copyright 2019, Devunto LLC & Kevin Heredia, All rights reserved.

import 'package:flutter/material.dart';
// import 'package:mailer/mailer.dart';
import 'package:tilted_cup/backend/mail.dart';
// import 'package:tilted_cup/contactInfo/message.dart';
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
    // var floatingActionButton = FloatingActionButton;
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
                          // contactDetails(name: name);
                        },
                        // add code to grab and save data
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
                          // contactDetails(number: numbertest);
                        },
                        // add code to grab and save data
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
                          // contactDetails(email: email);
                        },

                        keyboardType: TextInputType.emailAddress,
                        // add code to grab and save data
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
                          // contactDetails(description: desc);
                        },
                        // controller: controller.addListener(callDesc),
                        // add code to grab and save data
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
            // TextFormField(
            //   decoration: InputDecoration(
            //     labelText: 'NAME',
            //     fillColor: Colors.white,
            //   ),
            // ),

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
          // Message();
          mail(
              name: callName,
              number: callNumber,
              email: callEmail,
              description: callDesc);

          // contactDetails(
          //     name: callName,
          //     number: callNumber,
          //     email: callEmail,
          //     description: callDesc);
          // add code
        },
        child: Icon(Icons.send),
      ),
    );
  }
}

// Card(
//   color: Colors.white,
//   margin: EdgeInsets.only(top: 300, left: 30, right: 30),
//   child: Padding(
//     padding: EdgeInsets.only(bottom: 0),
//     child: TextField(
//       decoration: InputDecoration.collapsed(hintText:
//         'You are not only selecting a bartender. You are choosing a partner in creating a safe and memorable event.',
//         // style: TextStyle(fontSize: 14),
//       ),
//       maxLines: 20,
//     ),
//   ),
// ),

Route _homePage() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MyHomePage(),
    // transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //   var begin = Offset(0.0, 5.5), end = Offset.zero;
    //   var curve2 = Curves.easeOut;

    //   var tween =
    //       Tween(begin: begin, end: end).chain(CurveTween(curve: curve2));

    //   return SlideTransition(
    //     position: animation.drive(tween),
    //     child: child,
    //   );
    // },
  );
}
