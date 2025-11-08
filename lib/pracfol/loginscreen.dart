import 'package:flutter/material.dart';
import 'package:myapp/pracfol/samplepages.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Container(
        height: 100,
        width: double.infinity,
        color: Colors.amber,
        child: Center(child: Text("loginscreen"))),),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.brown,
          child: Center(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingPage()));
              },
              child: Text("login screen",style: TextStyle(color: Colors.white,fontSize: 16),)),
          )),
        ),
      ),
    );
  }
}