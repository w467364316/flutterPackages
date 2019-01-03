import './WJLodingDialog.dart';
import 'package:flutter/material.dart';

class WJShowLoadingDialog {
    /*
     * 显示loadingView
     *  context 上下文
     *  title 显示文本
     *  fontSize 文本字号，默认12号
     *  textColor 文本颜色
     * */
   static showLoadingDialog ({BuildContext context,String title,double fontsize,Color textColor}) {
     showDialog(
       context: context,
       barrierDismissible: false,
       builder: (context) {
         return WJLoadingDialiog(title: title??'正在加载');
       }
     );
   }

    //隐藏loadingView
  static hideLoadingDialog(BuildContext context) {
     Navigator.of(context).pop();
   }
}