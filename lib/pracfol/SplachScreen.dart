import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/pracfol/LogInForm.dart';

class Splachscreen extends StatefulWidget {
  const Splachscreen({super.key});

  @override
  State<Splachscreen> createState() => _SplachscreenState();
}

class _SplachscreenState extends State<Splachscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LogInForm()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             Text("🐸", style: TextStyle(fontSize: 150.0)),
             Text("Froggy", style: TextStyle(fontSize: 15.0,  fontFamily: 'Roboto')),
             
          ],
        ),
        // child: Image.network('https://cdn-icons-png.flaticon.com/512/5968/5968705.png'),
      ),
    );
  }
}
