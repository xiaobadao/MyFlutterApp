import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_app/SPControllers/SPLogControl/sp_login_bean_entity.dart';
// md5 加密
String generateMd5(String data) {
  var content = new Utf8Encoder().convert(data);
  var digest = md5.convert(content);
  // 这里其实就是 digest.toString()
  return hex.encode(digest.bytes);
}

saveUserInfo(SPLoginBeanEntity userBean) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("loginToken", "1");
  prefs.setString("userId", userBean.userId);
  prefs.setString("orgId", userBean.orgId);
  prefs.setString("orgName", userBean.orgName);
}
String getUserId(){
  return getUserInfo("userId");
}
String getorgId(){
  return getUserInfo("orgId");
}
String getorgName(){
  return getUserInfo("orgName");
}

String getUserInfo(String key) {
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  prefs.then((v){
    return v.getString(key);
  }).catchError((e){
    print("userInfoError:${e.toString()}");
  });

  return "";
}
clearToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
}

pushNavigation(BuildContext context, WidgetBuilder builder) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: builder),
    ModalRoute.withName('/'),
  );
}
