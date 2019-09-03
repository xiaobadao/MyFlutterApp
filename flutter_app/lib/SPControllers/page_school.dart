import 'package:flutter/material.dart';

class PageSchool extends StatefulWidget {
  String _title;
  PageSchool(this._title);

  @override
  _PageSchoolState createState() => _PageSchoolState();
}
class  _PageSchoolState extends State<PageSchool>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(
          '${widget._title}内容',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}