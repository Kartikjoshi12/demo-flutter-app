import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/models/UserInfo.dart';

class MyUserInfoPage extends StatefulWidget {
  const MyUserInfoPage({super.key});

  @override
  State<MyUserInfoPage> createState() => _MyUserInfoPageState();
}

class _MyUserInfoPageState extends State<MyUserInfoPage> {
  List<UserInfo> userinfo = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),

            itemCount: userinfo.length,

            shrinkWrap: true,

            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                margin: const EdgeInsets.only(bottom: 10),
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(31, 103, 96, 96),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getText(index, 'ID: ', userinfo[index].id.toString()),
                    getText(index, 'Name: ', userinfo[index].name.toString()),
                    getText(
                      index,
                      'Username: ',
                      userinfo[index].username.toString(),
                    ),
                    getText(index, 'Email: ', userinfo[index].email.toString()),
                    getText(
                      index,
                      'Email: ',
                      '${userinfo[index].address.suite.toString()},${userinfo[index].address.street.toString()},${userinfo[index].address.city.toString()},${userinfo[index].address.zipcode.toString()}',
                    ),
                    getText(index, 'Phone: ', userinfo[index].phone.toString()),
                    getText(
                      index,
                      'Website: ',
                      userinfo[index].website.toString(),
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

  Text getText(int index, String fieldname, String content) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: fieldname,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          TextSpan(text: content, style: TextStyle(fontSize: 13)),
        ],
      ),
    );
  }

  /// this is function for fetching data form api and to send it to new list(array);
  Future<List<UserInfo>> getData() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        userinfo.add(UserInfo.fromJson(index));
      }
      return userinfo;
    } else {
      return userinfo;
    }
  }
}
