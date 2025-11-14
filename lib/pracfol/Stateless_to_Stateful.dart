import 'package:flutter/material.dart';

class UseStatefulWithless extends StatelessWidget {
  UseStatefulWithless({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("this is stateless class used as stafeull",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)),
      body: ValueListenableBuilder(
        valueListenable: _counter,
        builder: (context, value, child) {
          return Center(child: Text(_counter.value.toString()));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
        },
      ),
    );
  }
}
