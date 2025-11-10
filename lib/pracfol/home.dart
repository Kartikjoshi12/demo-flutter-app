import 'package:flutter/material.dart';
import 'package:myapp/pracfol/Carasol.dart';
import 'package:myapp/pracfol/HomePost.dart';
import 'package:myapp/pracfol/SnakBar.dart';
import 'package:myapp/pracfol/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home page"),
        backgroundColor: Colors.lightBlueAccent,
        toolbarHeight: 70,
      ),

      drawer: MyDrawerPage(),
      // body:MyUserInfoPage());
      body: ListView(
        children: [
        MyCarasol(), 
        SizedBox(height: 10), 
        SnackBarDemo(),
                SizedBox(height: 10),
       MyHomePost(),
        ],
      ),
    );
  }
}

// MyCarasol()
