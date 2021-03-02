import 'dart:async';
import 'package:flutter/material.dart';

//定义常量
const double _kTextAndIconTabHeight = 53.0;
const double _kMarginBottom = 30.0;

class IconTab extends StatefulWidget {
  //构造函数
  const IconTab({
    Key key,
    this.text,
    this.icon,
    this.color,
  }):assert(text !=null || icon !=null || color !=null),super(key:key);
  //
  //定义变量
  final String text;
  final String icon;
  final Color color;

  @override
  State<StatefulWidget> createState(){
    return new IconTabState();
  }
}

class IconTabState extends State<IconTab> {

  //定义组件
  Widget  _buildLabText(){
    return new Text(
        widget.text,
        softWrap: false,
        overflow: TextOverflow.fade,
        style: TextStyle(color: widget.color)
    );
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasDirectionality(context));
    double height = _kTextAndIconTabHeight;
    return Container(
      height: height,
      margin: EdgeInsets.only(bottom: _kMarginBottom),
      child: new Column(
        //水平方向居中
        mainAxisAlignment: MainAxisAlignment.center,
        //垂直方向居中
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: new Image(
              image: new AssetImage(widget.icon),
              height: 30.0,
              width: 30.0,),
              // margin: EdgeInsets.only(bottom: _kMarginBottom),
          ),
          _buildLabText(

          ),
        ],
      ),
    );
  }


}