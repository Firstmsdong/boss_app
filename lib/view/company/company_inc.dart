import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CompanyInc extends StatelessWidget{
  
  //定义
  final String companyInc;
  //初始化
  CompanyInc(this.companyInc);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding:const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0,bottom: 10.0),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text("公司介绍",style: TextStyle(fontSize: 15.0),),
                  )
                ],
              ),
              RichText(text: TextSpan(text: companyInc,style: TextStyle(fontSize: 13,color: Colors.black)))
            ],
          ),
        ),
      )
      );
  }

}