import 'package:flutter/material.dart';
import 'package:flutter_app/SPControllers/SPReportController.dart';
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

                //child: Chi,
              ),

              new Container(
                color: Colors.lightGreen,
              ),
              new Container(
                color: Colors.red,
                padding: EdgeInsets.all(0),
                child: RaisedButton.icon(
                    onPressed: (){
                  print("报货单");
                },
                    icon: Icon(Icons.home), 
                    label: Text("报货单")),
              ),
              new Container(
                color: Colors.orange,
                child: RaisedButton(

                  child: Text("报货"),
                  textTheme: ButtonTextTheme.normal,
                  onPressed: (){
                    print("报货");
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => SPReportController()),
                      ModalRoute.withName('/'),
                    );

                },

//                new Row(
//                  children: <Widget>[
//
//                    Icon(Icons.save,semanticLabel: "ddd",textDirection: TextDirection.ltr,),
//                    Text("haha")
//                  ],
                ),
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
//  String _title;
//  PageHome(this._title);
//
//  @override
//  _PageHomeState createState() => _PageHomeState();
}
//class  _PageHomeState extends State<PageHome>{
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget._title),
//      ),
//      body: Center(
//        child: Text(
//          '${widget._title}内容',
//          style: TextStyle(fontSize: 20.0),
//        ),
//      ),
//    );
//  }
//}