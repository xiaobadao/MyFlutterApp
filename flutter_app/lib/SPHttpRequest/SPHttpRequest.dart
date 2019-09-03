import 'package:http/http.dart' as http;
//import 'package:sky_engine/_http/http.dart' as http ;

//import 'package:dio/dio.dart';

class SPHttpRequest {
  static get(url,param) async{
    http.Response reponse = await http.get(url);
//    Dio dio = new Dio();
//
//    var response = await dio.get(url,data: param);
//    print(response);
  }
  static post(url,param) async{
    http.Response reponse = await http.post(url,body: param);
    print(reponse.body);
//    Dio dio = new Dio();
//    var response = await dio.post(url,data: param);
//    print(response.data.toString());
  }
}