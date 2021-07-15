import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class DrawerExample extends StatefulWidget {
  const DrawerExample({Key? key}) : super(key: key);

  @override
  _DrawerExampleState createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      child: Container(
        color: Colors.white70,

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 100,
            child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BOSS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25.0),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          ListTile(
              leading: Icon(
                Icons.home_rounded,
              ),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => HomeScreen()));
              }),
          ListTile(
            leading: Icon(
              Icons.search_rounded,
            ),
            title: Text(
              'Search',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            //onTap: () {
            //Navigator.push(
            //context,
            //CupertinoPageRoute(builder: (context) => SearchScreen())
            //);
            //}
          ),
          ListTile(
            leading: Icon(
              Icons.face_rounded,
            ),
            title: Text(
              'Login',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            //onTap: () {
            //Navigator.push(
            //context,
            //CupertinoPageRoute(builder: (context) => LoginScreen())
            //);
            //}
          ),
          ListTile(
            leading: Icon(
              Icons.settings_rounded,
            ),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            //onTap: () {
            //Navigator.push(
            //context,
            //CupertinoPageRoute(builder: (context) => SettingsScreen())
            //);
            //}
          ),
        ],
      ),
      )
    );
  }
}
