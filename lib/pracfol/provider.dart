import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/provider/count_provider.dart';
import 'package:provider/provider.dart';

class MyProviderExamp extends StatefulWidget {
  const MyProviderExamp({super.key});

  @override
  State<MyProviderExamp> createState() => _MyProviderExampState();
}

class _MyProviderExampState extends State<MyProviderExamp> {
  @override
  void initState() {
    super.initState();
   Timer.periodic(Duration(seconds: 0), (timer){
     final countProvider = Provider.of<CountProvider>(context, listen: false);
            countProvider.setcount();
   });
  }
  @override
  Widget build(BuildContext context) {

    final countProvider = Provider.of<CountProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: Text("provider app")),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            return Text(
              value.count.toString(),
              style: TextStyle(fontSize: 59.0),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            countProvider.setcount();
          });
        },
      ),
    );
  }
}