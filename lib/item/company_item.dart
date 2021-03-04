import 'dart:convert';
import 'package:boss_app/commponent/icon_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:boss_app/model/company_model.dart';

class CompanyListItem extends StatelessWidget{
  final CompanyModel  companyModel;
  CompanyListItem(this.companyModel);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(top: 3.0,left: 5.0,right: 5.0,bottom: 3.0),
      child: new SizedBox(
        child: new Card(
          elevation: 0.0,//设置的阴影效果 值越大 影子越长
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Padding(
                  padding: const EdgeInsets.only(top: 10,left: 15.0,right: 15.0,bottom: 0),
                  child: new Image.network(companyModel.logo,width: 50.0,height: 50.0,),
              ),
              new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10.0,bottom: 5.0),
                        child: Text(companyModel.name,textAlign: TextAlign.left,style: TextStyle(fontSize: 15.0),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,right: 5.0),
                        child: Text(companyModel.location,style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,right: 5.0),
                        child: Text(companyModel.type + " | " + companyModel.size + " | " + companyModel.size ,style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                      ),
                      new Divider(),//分割线显示
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,right: 5.0),
                            child: Text("热招:" + companyModel.hot + "等" + companyModel.count + "个职位",style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                          ),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:const EdgeInsets.only(bottom: 8.0),
                                    child:const Icon(Icons.keyboard_arrow_right,color: Colors.grey,) ,
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );

  }

}