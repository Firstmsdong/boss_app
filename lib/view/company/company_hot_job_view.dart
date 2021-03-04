import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CompanyHotJob extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Padding(
      padding:const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0,bottom: 10.0),
      child: Row(
        children: [
          /*
          * 与Text不同，RichText的text属性不是String类型，而是TextSpan，TextSpan用于指定文本片段的风格及手势交互。看一下它的构造器：
          * */
          RichText(
              text:TextSpan(text: "敬请期待",style: TextStyle(fontSize: 16.0,color: Colors.black)),
          ),
        ],
      ),
    );
  }

}