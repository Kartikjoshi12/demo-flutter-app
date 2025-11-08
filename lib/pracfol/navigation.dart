import 'package:flutter/material.dart';
import 'package:myapp/pracfol/detail.dart';


class MyNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  return _MyNavigation();
  }

}

class _MyNavigation extends State<MyNavigation>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: ElevatedButton(
         child : Text("click me "),
         onPressed:()=>{Navigator.push(context, 
         MaterialPageRoute (builder: (context)=> Detail())),}
        ),
      ) ,
    );
  }

}
