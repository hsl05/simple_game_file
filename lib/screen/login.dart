import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bottom_nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = '이름 없음.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 230,
                  width: 350,
                  child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white24),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children:[
                              Container(
                              child: Text('CARD NUMBER', style: TextStyle(fontSize: 14, color: Colors.white70),),
                              padding: EdgeInsets.fromLTRB(20,30, 0, 0),
                              )
                                  ]
                            ),
                            Row(
                            children: [
                              Container(
                                child: Text('**** **** **** 1425', style: TextStyle(fontSize: 16, color: Colors.white70, fontWeight: FontWeight.bold),),
                                padding: EdgeInsets.fromLTRB(20,5, 0, 0),
                              ),
                            ],
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(10,0, 190, 0),
                              child: Text('CARD HOLDERNAME', style: TextStyle(fontSize: 14, color: Colors.white70),),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
                              child: TextFormField(
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70,
                                    fontSize: 16
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left:10),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white70)
                                  ),
                                ),
                                onChanged: (String name) {
                                  setState(() => name = name);
                                }
                              ),
                            ),
                          ],
                        ),

                        ],
                    ),
                  )
                  ),
              ],
            )
          ],
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.person_rounded, color: Colors.white70,
        ),
        backgroundColor: Colors.white30,
        onPressed: () {
          print(name);
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => BottomNavBarScreen(),
            ),
          );
        }
      ),
    );
  }
}
