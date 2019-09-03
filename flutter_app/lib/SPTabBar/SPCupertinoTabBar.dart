import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/SPControllers/page_home.dart';
import 'package:flutter_app/SPControllers/page_search.dart';
import 'package:flutter_app/SPControllers/page_business.dart';
import 'package:flutter_app/SPHttpRequest//SPHttpDio.dart';
import 'package:flutter_app/SPHttpApi/SPHttpApi.dart';
import 'package:flutter_app/SPMD5.dart';

class SPCupertinoTabBar extends StatefulWidget {
  @override
  _SPCupertinoTabBar createState() => _SPCupertinoTabBar();
}
class _SPCupertinoTabBar extends State<SPCupertinoTabBar> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
        tabBar:CupertinoTabBar(
            items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),title: Text("首页"),),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.conversation_bubble),title: Text("消息")),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled),title: Text("我的")),
        ]) ,
        tabBuilder: (BuildContext context, int index){
          return CupertinoTabView(
            builder: (BuildContext context){
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text("page 1 of tab $index"),
                ),
                  child:Center(
                    child: Text(
                      'xxxxxxx',
                    ),
                  ),

              );

            },
          );
        },
    );
  }
}