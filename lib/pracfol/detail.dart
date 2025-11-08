import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
         return Scaffold(
            appBar: AppBar(
              leading: IconButton(onPressed: (){
                 Navigator.pop(context);
              }, icon:Icon(Icons.arrow_back) ),
              title: Container(
        height: 100,
        width: double.infinity,
        color: Colors.amber,
        child: Center(child: Text("loginscreen"))),),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[ Text("details " , 
                  style: TextStyle(fontSize: 30.0),),
                  FloatingActionButton(
                    child: Icon(Icons.arrow_back),
                    onPressed:()=>
                  Navigator.pop(context)
                  )
                   ],
                ),
              ),
         );
  }

}

