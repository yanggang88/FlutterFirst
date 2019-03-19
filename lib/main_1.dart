import 'package:flutter/material.dart';
class Sample_112 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "111",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("start"),
        ),
        body: new Center(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.red,
              ),
              new Icon(
                Icons.star,
                color: Colors.amber,
              ),
              new Icon(
                Icons.star,
                color: Colors.blue,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
              ),
              new Icon(
                Icons.star,
                color: Colors.black38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}