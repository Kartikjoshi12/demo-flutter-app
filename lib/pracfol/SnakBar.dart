import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  const SnackBarDemo({super.key});

  @override
  State<SnackBarDemo> createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final snackBar = SnackBar(
          content: const Text("You have clicked a SnackBar"),
          action: SnackBarAction(
            label: "Undo",
            onPressed: () {
              // Optional: do something when Undo is pressed
            },
          ),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: const Text("Show SnackBar"),
    );
  }
}
