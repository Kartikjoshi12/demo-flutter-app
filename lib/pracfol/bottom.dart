import 'package:flutter/material.dart';
import 'package:myapp/pracfol/Servicespage.dart';
import 'package:myapp/pracfol/detail.dart';
import 'package:myapp/pracfol/home.dart';

class BottomMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomMenuState();
  }
}

class _BottomMenuState extends State<BottomMenu> {
  var _pageslist = [HomePage(), Detail(), ServicesPage()];
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pageslist[_selectedItem]),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Details"),
          BottomNavigationBarItem(
            icon: Icon(Icons.room_service),
            label: "Services",
          ),
        ],
        currentIndex: _selectedItem,
        onTap: (setvalue) => {
          setState(() {
            _selectedItem = setvalue;
          }),
        },
      ),
    );
  }
}
