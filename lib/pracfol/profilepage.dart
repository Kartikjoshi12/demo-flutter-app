import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  var _level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("profile")),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 20.0, 0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                  radius: 40.0,
                ),
              ),

              Divider(height: 60.0),

              Text(
                "NAME ",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text(
                "Kartik Joshi",
                style: TextStyle(fontSize: 20.0, color: Colors.pinkAccent),
              ),
              SizedBox(height: 20.0),

              Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Icon(Icons.email, color: Colors.blueGrey),
                  SizedBox(width: 5.0),
                  Text(
                    "Kartik@Gmail.com",
                    style: TextStyle(fontSize: 20.0, color: Colors.pinkAccent),
                  ),
                ],
              ),
              SizedBox(height: 20.0),

              Text(
                "Number",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text(
                "9999999999",
                style: TextStyle(fontSize: 20.0, color: Colors.pinkAccent),
              ),
              SizedBox(height: 20.0),

              Text(
                "Current Level",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text(
                '${_level}',
                style: TextStyle(fontSize: 20.0, color: Colors.pinkAccent),
              ),
              SizedBox(height: 20.0),

              FloatingActionButton(
                child: Icon(Icons.add_ic_call),
                onPressed: () => {
                  setState(() {
                    _level += 1;
                  }),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
