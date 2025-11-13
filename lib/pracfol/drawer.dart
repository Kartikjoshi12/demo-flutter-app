import 'package:flutter/material.dart';
import 'package:myapp/pracfol/Dark_Theme_Screen.dart';
import 'package:myapp/pracfol/Like_List.dart';
import 'package:myapp/pracfol/LogInForm.dart';
import 'package:myapp/pracfol/Slider.dart';
import 'package:myapp/pracfol/To_do.dart';
import 'package:myapp/pracfol/bottom.dart';
import 'package:myapp/pracfol/loginscreen.dart';
import 'package:myapp/pracfol/profilepage.dart';
import 'package:myapp/pracfol/provider.dart';

class MyDrawerPage extends StatefulWidget {
  const MyDrawerPage({super.key});

  @override
  State<MyDrawerPage> createState() => _MyDrawerPageState();
}

class _MyDrawerPageState extends State<MyDrawerPage> {
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
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyProfilePage()),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Kartik Joshi",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "kartik@example.",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home,color: Colors.blue,),
            title: Text("Home"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomMenu()),
              );
            },
          ),
           ListTile(
            leading: Icon(Icons.sunny,color: Colors.yellow,),
            title: Text("Theme"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DarkThemeScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.list,color: Colors.blueAccent),
            title: Text("TO Do List"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyTodoList()),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.countertops_sharp,color: Colors.deepPurple),
            title: Text("Counter"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyProviderExamp()),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.slideshow_rounded,color: Colors.green),
            title: Text("Slider"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SliderProvider()),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.favorite,color: Colors.red),
            title: Text("liked"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LikeList()),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.login,color: Colors.blueGrey),
            title: Text("LogIn"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogInForm()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.amberAccent),
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
