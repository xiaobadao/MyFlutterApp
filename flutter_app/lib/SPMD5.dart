import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:shared_preferences/shared_preferences.dart';

// md5 加密
String generateMd5(String data) {
  var content = new Utf8Encoder().convert(data);
  var digest = md5.convert(content);
  // 这里其实就是 digest.toString()
  return hex.encode(digest.bytes);
}
saveToken() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("loginToken", "1");
}
clearToken() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
//  prefs.setString("loginToken", null);
  prefs.clear();
}