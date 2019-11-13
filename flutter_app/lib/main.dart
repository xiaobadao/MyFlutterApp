
import 'package:flutter/material.dart';
import "SPHttpRequest/MyApp.dart";
import 'SPTabBar/SPBottomNavigationBarA.dart';
import 'SPTabBar/SPBottomAppBarB.dart';
import 'SPTabBar/SPCupertinoTabBar.dart';
import 'SPControllers/SPLogControl/SPLogController.dart';
import 'package:flutter_app/SPControllers/SPLogControl/SPStartAppState.dart';
import 'package:flutter_app/SPControllers/SPReportController.dart';
import 'package:flutter_app/SPControllers/SPReportListVC.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(new SPMyApp());

class  SPMyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    debugPaintSizeEnabled = true;
    return new MaterialApp(
      title: 'Sample App',
      theme: new ThemeData(
          primaryColor: Colors.teal
      ),
      home: Scaffold(
        body: SPStartApp(),
      )
    );
  }
}