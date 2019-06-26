import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'appbar_actionBtn.dart';

class CupertinoPage extends StatefulWidget {
  @override
  _CupertinoPageState createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  bool _switch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('쿠퍼티노 UI'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            CupertinoButton(
              child: Text('쿠퍼티노 버튼'), onPressed: () {},
            ),
            CupertinoSwitch(
              value: _switch,
              onChanged: (bool value) {
                setState(() {
                  _switch = value;
                });
            },
            ),
            RaisedButton(
              child: Text('화면 이동'), onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AppbarAction()));
            }
        ),
            Switch(
              value: _switch,
              onChanged: (bool value){
                setState(() {
                  _switch = value;
                });
              },
            )
      ]),
    )
    );
  }
}
