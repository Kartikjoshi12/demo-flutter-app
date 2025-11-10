import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/models/samplemodel.dart';

class MyHomePost extends StatefulWidget {
  const MyHomePost({super.key});

  @override
  State<MyHomePost> createState() => _MyHomePostState();
}

class _MyHomePostState extends State<MyHomePost> {
  List<SamplePost> samplepost = [];

  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder(
      future: getData(),

      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: samplepost.length,
            shrinkWrap: true, // 👈 important
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                height: 130,
                color: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'User Id : ${samplepost[index].id} ',
                      maxLines: 1,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Id : ${samplepost[index].id} ',
                       maxLines: 1,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Title : ${samplepost[index].title} ',
                       maxLines: 1,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Info : ${samplepost[index].body} ',
                       maxLines: 1,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              );
            },
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
    Future<List<SamplePost>> getData() async {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );

      var data = jsonDecode(response.body.toString());

      if (response.statusCode == 200) {
        for (Map<String, dynamic> index in data) {
          samplepost.add(SamplePost.fromJson(index));
        }
        return samplepost;
      } else {
        return samplepost;
      }
    }
}
