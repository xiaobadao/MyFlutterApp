
import 'package:flutter/material.dart';
import 'package:flutter_app/SPControllers/page_school.dart';
import 'package:flutter_app/SPControllers/page_home.dart';
import 'package:flutter_app/SPControllers/page_business.dart';
import 'package:flutter_app/SPControllers/page_search.dart';

class SPBottomAppBarB extends StatefulWidget {
  @override
  _SPBottomAppBarB createState() => _SPBottomAppBarB();
}

class _SPBottomAppBarB extends State<SPBottomAppBarB>{

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List<Widget> _bottomNavPages = List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bottomNavPages..add(PageHome())
      ..add(PageSchool("专业"))
      ..add(PageBusiness("商场"))
      ..add(PageSearch("搜索"));

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _bottomNavPages[_selectedIndex],
      backgroundColor: Colors.teal,
      persistentFooterButtons: <Widget>[
        IconButton(
            icon: Icon(
                Icons.home,
                color: Colors.white,
            ),
            onPressed: ()=> _onItemTapped(0),
        ),
        IconButton(
          icon: Icon(
            Icons.school,
            color: Colors.white,
          ),
          onPressed: ()=> _onItemTapped(1),
        ),
        SizedBox(),

        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: ()=> _onItemTapped(3),
        ),
        IconButton(
          icon: Icon(
            Icons.business,
            color: Colors.white,
          ),
          onPressed: ()=> _onItemTapped(2),
        ),
      ],

      resizeToAvoidBottomPadding: false,
      primary: false,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}