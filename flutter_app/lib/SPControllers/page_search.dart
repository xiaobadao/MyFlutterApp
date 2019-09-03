import 'package:flutter/material.dart';

class PageSearch extends StatefulWidget {
  String _title;
  PageSearch(this._title);

  @override
  _PageSearchState createState() => _PageSearchState();
}
class  _PageSearchState extends State<PageSearch>{

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