import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WJLoadingDialiog  extends Dialog {  
  final String title; //显示文字
  final Color textColor; //文字颜色,默认为black
  final double fontSize; //文字字号,默认为12.0

  WJLoadingDialiog({Key key,this.title,this.textColor = Colors.black,this.fontSize = 12.0}):super(key:key);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Material(
        type: MaterialType.transparency,
        child: new Center(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Color(0xffffffff),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Platform.isAndroid?new CircularProgressIndicator():new CupertinoActivityIndicator(),
                Container(
                  // color: Colors.red,
                  padding: EdgeInsets.only(top: 20),
                  child: new Text(
                    title,
                    style: TextStyle(
                      fontSize: fontSize,
                      color: textColor
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      );
    }
}