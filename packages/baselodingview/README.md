# baselodingview

A new flutter plugin project.

## Getting Started
[plug-in package](https://flutter.io/developing-packages/),
[online documentation](https://flutter.io/docs),

##详解
使用showDialog，自定义material实现loading的效果。
- Android下使用CircularProgressIndicator。
- iOS下使用CupertinoActivityIndicator。

###示例
```dart
class HomePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Center(
          child: FlatButton(
            child: Text('show loading'),
            onPressed: () {
              WJShowLoadingDialog.showLoadingDialog(context: context,title: '正在加载');
              Future.delayed(Duration(seconds: 3),(){
                 WJShowLoadingDialog.hideLoadingDialog(context);
              });
            },
          )
        );
    }
}
```
