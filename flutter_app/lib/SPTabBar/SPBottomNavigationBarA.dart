
import 'package:flutter/material.dart';
import 'package:flutter_app/SPControllers/page_business.dart';
import 'package:flutter_app/SPControllers/page_home.dart';
import 'package:flutter_app/SPControllers/page_school.dart';

class SPBottomNavigationBarA extends StatefulWidget {

  @override
  _SPBottomNavigationBarState createState() => _SPBottomNavigationBarState();
}
class _SPBottomNavigationBarState extends State<StatefulWidget> {

  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  List<Widget> _bottomNavPages = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bottomNavPages..add(PageHome())..add(PageBusiness("商城"))..add(PageSchool("课程"));
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _bottomNavPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
        BottomNavigationBarItem(icon: Icon(Icons.business), title: Text("商城")),
        BottomNavigationBarItem(icon: Icon(Icons.school), title: Text("课程")),
      ],
      currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        fixedColor: Colors.teal,
      ),
    );
  }
}