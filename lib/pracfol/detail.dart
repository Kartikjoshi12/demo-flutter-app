import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Container(
          height: 100,
          width: double.infinity,
          color: Colors.amber,
          child: Center(child: Text("About Us")),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              GFAccordion(
                title:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                content:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consectetur quis eros sed elementum. Sed lacinia pretium magna at luctus. Proin accumsan, mi eget dignissim tincidunt, orci sem scelerisque tortor, nec dictum mi nulla placerat velit.',
              ),

              GFAccordion(
                title: 'Lorem ipsum dolor sit amet,.',
                content:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Proin accumsan, mi eget dignissim tincidunt, orci sem scelerisque tortor, nec dictum mi nulla placerat velit.',
              ),

              GFAccordion(
                title: 'Lorem ipsum dolor sit amet,.',
                content:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Proin accumsan, mi eget dignissim tincidunt, orci sem scelerisque tortor, nec dictum mi nulla placerat velit.',
              ),
              GFAccordion(
                title:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                content:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consectetur quis eros sed elementum. Sed lacinia pretium magna at luctus. Proin accumsan, mi eget dignissim tincidunt, orci sem scelerisque tortor, nec dictum mi nulla placerat velit.',
              ),

              GFAccordion(
                title: 'Lorem ipsum dolor sit amet,.',
                content:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Proin accumsan, mi eget dignissim tincidunt, orci sem scelerisque tortor, nec dictum mi nulla placerat velit.',
              ),

              GFAccordion(
                title: 'Lorem ipsum dolor sit amet,.',
                content:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Proin accumsan, mi eget dignissim tincidunt, orci sem scelerisque tortor, nec dictum mi nulla placerat velit.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
