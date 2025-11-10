import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarasol extends StatefulWidget {
  const MyCarasol({super.key});

  @override
  State<MyCarasol> createState() => _MyCarasolState();
}

class _MyCarasolState extends State<MyCarasol> {
  final List<String> _images = List.generate(
    6,
    (i) => "https://picsum.photos/seed/$i/400/250",
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CarouselSlider(
            items: _images.map((e) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.network(e),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 400.0,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
          ),
        ],
      ),
    );
  }
}
