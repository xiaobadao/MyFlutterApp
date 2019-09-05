import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/SPHttpApi/SPHttpApi.dart';
import 'package:flutter_app/SPHttpRequest/SPHttpDio.dart';
import 'package:flutter_app/SPMD5.dart';
import 'package:flutter_app/SPTabBar/SPBottomNavigationBarA.dart';
import 'package:flutter_app/SPControllers/SPLogControl/sp_login_bean_entity.dart';

class SPLogController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return new MaterialApp(
      title: "登录界面",
      theme: new ThemeData(
        primaryColor: Colors.teal,
      ),
      home: Scaffold(
        body: SPLogHomePage(),
      ),
    );
  }
}

class SPLogHomePage extends StatefulWidget {
  @override
  _SPLogControllerState createState() => _SPLogControllerState();
}

class _SPLogControllerState extends State<SPLogHomePage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 120,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 30.0),
              color: Colors.white,
              child: Icon(Icons.access_alarm),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: new Container(
                child: builForm(),
              ),
            )
          ],
        ),
      ],
    );
  }

  TextEditingController unnameController = new TextEditingController();
  TextEditingController pwdController = new TextEditingController();
  GlobalKey formkey = new GlobalKey<FormState>();

  Widget builForm() {
    return Form(
      key: formkey,
      autovalidate: true,
      child: Column(
        children: <Widget>[
          TextFormField(
              autofocus: false,
//              keyboardType: TextInputType.number,
//              textInputAction: TextInputAction.next,
              controller: unnameController,
              decoration: InputDecoration(
                labelText: "用户名或邮箱",
                hintText: "用户名或邮箱",
                icon: Icon(Icons.person),
              ),
              obscureText: false,
              validator: (v) {
                return v.trim().length > 0 ? null : "用户名不能为空";
              }),
          TextFormField(
              autofocus: false,
              controller: pwdController,
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              validator: (v) {
                return v.trim().length > 5 ? null : "密码不能少于6位";
              }),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      padding: EdgeInsets.all(15.0),
                      child: Text("登录"),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: () {
                        if ((formkey.currentState as FormState).validate()) {
                          Map<String, dynamic> para = {
                            "userName": unnameController.text, //"18801200000",
                            "deviceId": "99eca6a4-b78f-332d-bc06-a0a743d206c6",
                            "ip": "192.168.1.62",
                            "password": generateMd5((pwdController
                                .text)), //"e10adc3949ba59abbe56e057f20f883e",
                          };

                          SPHttpDio.httpRequest(
                              SPHttpApi.userLogin, para, HttpMethod.Post,
                              (data, error) {
                            if (data != null) {

                              SPLoginBeanEntity bean =
                              SPLoginBeanEntity.fromJson(data);
                              saveUserInfo(bean);
                              try {
                                Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
                                    builder: (BuildContext context) => new SPBottomNavigationBarA()), (//跳转到主页
                                    Route route) => route == null);

                              } catch (extensen) {
                                print(extensen.toString());
                              }

                            } else {
                              print("error: $error");
                            }
                          });
                        }
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
