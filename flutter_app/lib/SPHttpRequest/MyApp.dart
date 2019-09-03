
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:sky_engine/_http/http.dart' as http ;
//import 'package:http/http.dart'  ;
import 'dart:async';
import 'dart:isolate';
import 'SPHttpRequest.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:collection';
class  MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Sample App',
      theme: new ThemeData(
          primaryColor: Colors.red
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  List widges = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();

     Map para = {
      "pageNum": "1",
      "pageSize": "10",
      "merchantId": "ACF1B7E000000058000000000BC800", //商户id
      "findName": "", //查询条件（预收款为付款方姓名，预付款为收款方姓名）
      "type": "1" //收付款类型（1：预收款，2：预付款)
    };
    SPHttpRequest.post("http://test4.mumzone.cn/egg_order/api/v1/boss/prePayment/prePaymentPage", para);
  }
  showLoadingDialog(){
    if(widges.length == 0){
      return true;
    }else{
      return false;
    }
  }
  getBody(){
    if (showLoadingDialog()){
      return getProgressDialog();
    }else{
      return getListView();
    }
  }
  getProgressDialog(){
    return Center(child: CircularProgressIndicator());
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample App"),
        ),
        body: getBody()
    );
  }
  ListView getListView() => ListView.builder(
      itemCount: widges.length,
      itemBuilder: (BuildContext context,int position){
        return getRow(position);
      });
  Widget getRow(int i){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Text("Row ${widges[i]["title"]}"),
    );
  }

  loadData() async{
    String dataURL = "https://jsonplaceholder.typicode.com/posts";

    ReceivePort receivePort = ReceivePort();
    await Isolate.spawn(dataLoader, receivePort.sendPort);
    SendPort sendPort = await receivePort.first;
    List msg = await sendReceive(sendPort, dataURL);
    setState(() {
      widges = msg;
    });
  }
  static dataLoader(SendPort sendPort) async{
    ReceivePort port = ReceivePort();
    sendPort.send(port.sendPort);
    await for (var msg in port){
      String data = msg[0];
      SendPort replyTo = msg[1];

      String dataURL = data;
//      http.Response response = await http.get(dataURL);
//      replyTo.send(json.decode(response.body));
    }
  }
  Future sendReceive (SendPort port ,msg){
    ReceivePort response = ReceivePort();
    port.send([msg,response.sendPort]);
    return response.first;
  }
}