import 'package:flutter/material.dart';
import 'package:flutter_app/SPHttpApi/SPHttpApi.dart';
import 'package:flutter_app/SPHttpRequest/SPHttpDio.dart';
import 'package:flutter_app/SPMD5.dart';
import 'package:flutter_app/SPControllers/SPLogControl/sp_report_bean_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
//import "package:"
class SPReportListVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("报货单"),
          backgroundColor: Colors.teal,
        ),
        body: new Container(
          padding: EdgeInsets.all(10),
          child: List(),
        ),
      ),
    );
  }
}

class List extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListState();
  }

}

class ListState extends State {
  SPReportBeanEntity reportBean ;

  @override
  void initState() {

    super.initState();
    getListData();
    print("1");
  }
  @override
  Widget build(BuildContext context) {
    print("2");
    return new ListView.builder(
        itemCount: reportBean == null ? 0 : reportBean.xList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: getItem(index),
          );
        });
  }
  /*
  * 获取item
  * */
  Widget getItem(int index){
    SPReportBeanList listBean = reportBean.xList[index];

    return GestureDetector(
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
             new Expanded(
                 child:Container(
                   height: 100,
                   alignment: Alignment.center,
                   child: getImage(listBean.headUrl),

                 ),
               flex: 1,

              ),
              new Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10,right: 10),
                  ),
              ),
            ],
          ),

      ),
      onTap: (){

      },
    );
  }
  /*
  * 获取图片
  * */
  getImage(String url){
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) => new Center(
        child: CircularProgressIndicator(),
      ) ,
      errorWidget: (context, url, error) => new Icon(Icons.error),
    );
  }
   getListData(){
    Map<String, dynamic> param = {
      "pageSize": "15",
      "pageNum": "1",
      "shopId": getorgId(),
      "purchaseType": "0",
      "app": "1",
      "statusFlow":"",

    };
    SPHttpDio.httpRequest(SPHttpApi.getGoodsPurchaseListPage, param, HttpMethod.Post, (data,error){
      try{
        print("3");
        if(data != null){
          SPReportBeanEntity bean = SPReportBeanEntity.fromJson(data);

          setState(() {
            this.reportBean = bean;
          });
        }
      }catch(e){
        print(e.toString());
      }
    });
  }
}
