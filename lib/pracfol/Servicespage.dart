import 'package:flutter/material.dart';
// import 'package:getwidget/components/accordion/gf_accordion.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OUR SERVICES"),),
      body: Container(
        child: Column(
          children: <Widget>[
            // GFAccordion(
            //   title: "this is head ",
            //   content: "dqjkdbdihadoiiowpqwwjiqehiqhoifwefowefhwefhwfgowefohou",
            // )
          ],
        ),
      ),
    );
  }
}