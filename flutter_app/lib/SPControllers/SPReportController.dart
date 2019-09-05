import 'package:flutter/material.dart';

class SPReportController extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("报货"),
          backgroundColor: Colors.teal,
          actions: <Widget>[
            RaisedButton(
                color: Colors.white,
                onPressed: null
            ),
          ],

        ),
        body: Center(
          child: RaisedButton(onPressed: (){

                if (Navigator.canPop(context)){
                  Navigator.pop(context);
                }
          }),
        ),

        ),
      );
  }

}
