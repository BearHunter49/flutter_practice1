import 'package:flutter/material.dart';

class AppbarAction extends StatefulWidget {
  @override
  _AppbarActionState createState() => new _AppbarActionState();
}

class _AppbarActionState extends State<AppbarAction> {
  String txtValue = 'Default';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "AppbarActions Test",
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppbarAction Test bar'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_comment),
              onPressed: (){
                setState(() {
                  txtValue = 'Changed!';
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: (){
                setState(() {
                  txtValue = 'Default';
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Text(txtValue),
        ),
      ),
    );
  }
}

