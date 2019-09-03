import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:convert';

typedef CallBack = void Function(Map<String,dynamic> data, String error);

enum HttpMethod{
     Post,
     Get
}
class SPHttpDio {

  static httpRequest(String url,
      Map<String,dynamic>param,
      HttpMethod method,
      CallBack callBack) async{

    Dio _dio = Dio();
    Response response;
    try {
      if (method == HttpMethod.Get){
        response = await _dio.get(url,queryParameters: param);

      }else{

        response = await _dio.post(url,queryParameters: param);
      }
      var result = jsonDecode(response.toString());
      if (result is Map<String,dynamic>){
        if (result["code"] == 200){
          print("result->:${result['data']}");
          callBack(result['data'],null);
          return;
        }
        callBack(null,result['msg']);
      }
    }catch(extensen){
      callBack(null,extensen.toString());
    }

  }

}