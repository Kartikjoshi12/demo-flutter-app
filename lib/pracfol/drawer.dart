import 'package:flutter/material.dart';
import 'package:myapp/pracfol/LogInForm.dart';
import 'package:myapp/pracfol/bottom.dart';
import 'package:myapp/pracfol/loginscreen.dart';
import 'package:myapp/pracfol/samplepages.dart';

class MyDrawerPage extends StatelessWidget {
  const MyDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 40),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
                ),
                SizedBox(height: 10),
                Text(
                  "Kartik Joshi",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "kartik@example.com",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomMenu()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingPage()),
              );
            },
          ),
               ListTile(
            leading: Icon(Icons.login),
            title: Text("LogIn"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogInForm()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => loginscreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
