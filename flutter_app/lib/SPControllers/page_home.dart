import 'package:flutter/material.dart';
import 'package:flutter_app/SPControllers/SPReportController.dart';
import 'package:flutter_app/SPControllers/SPReportListVC.dart';
import 'package:flutter_app/SPMD5.dart';

class PageHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "首页",
      home: Scaffold(
        //backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("首页"),
          backgroundColor: Colors.teal,

        ),

        body: Center(
          child: GridView.count(
              crossAxisCount: 4,
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.vertical,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: <Widget>[

              new Container(

                child: RaisedButton(
                  color: Colors.orange,
                  child: Text("报货",style: TextStyle(fontSize: 20)),
                  textTheme: ButtonTextTheme.normal,
                  onPressed: (){
                    print("报货");
                    pushNavigation(context, (BuildContext context) => SPReportController());

                  },

                ),
              ),
              new Container(

                padding: EdgeInsets.all(0),
                child: RaisedButton(
                  color: Colors.teal,
                  child: Text("报货单",style: TextStyle(fontSize: 20)),
                  onPressed: (){
                    print("报货单");
                    pushNavigation(context, (BuildContext context) => SPReportListVC());

                  },
                ),
              ),
              new Container(
                color: Colors.lightBlue,
                child: new Stack(

                  alignment: Alignment.center,
                  children: <Widget>[
                    new Text(
                      "收货入库",
                      style: new TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                      ),
                    ),
                  ],
                ),
              ),

              new Container(
                color: Colors.lightGreen,
              ),

              new Container(
                color: Colors.lightBlueAccent,
              ),
              new Container(
                color: Colors.lightGreenAccent,
              ),
              new Container(
                color: Colors.teal,
              ),

            ],
          ),
        ),
      ),
    );
  }

}
