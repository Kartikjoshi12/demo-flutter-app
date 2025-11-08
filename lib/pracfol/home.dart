import 'package:flutter/material.dart';
import 'package:myapp/pracfol/UserInfoPage.dart';
import 'package:myapp/pracfol/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home page",),
      backgroundColor: Colors.lightBlueAccent,
      toolbarHeight: 70,
      ),
    
      drawer: MyDrawerPage(),
      body:MyUserInfoPage());
  }
}