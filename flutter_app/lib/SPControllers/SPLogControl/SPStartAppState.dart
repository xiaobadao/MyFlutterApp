
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'SPLogController.dart';
import 'package:flutter_app/SPTabBar/SPCupertinoTabBar.dart';
import 'package:flutter_app/SPMD5.dart';
import 'package:flutter_app/SPTabBar/SPBottomNavigationBarA.dart';
class SPStartApp extends StatefulWidget{
  @override
  SPStartAppState createState() => SPStartAppState();
}
class SPStartAppState extends State<SPStartApp>{

  var loginState;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _validateLogin();

  }
  @override
  Widget build(BuildContext context) {
    if (loginState == 0){
      return SPLogController();

    }else{
      return SPBottomNavigationBarA();

    }
  }
  Future _validateLogin() async {
    Future <dynamic> future = Future(() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.get("loginToken");

    });
    future.then((v){
      print("v:$v");
      if (v == null){
        setState(() {
          loginState = 0;
        });
      }else{

        setState(() {
          loginState = 1;
        });

      }
    }).catchError((_){
      print("catch Error");
    });
  }
}