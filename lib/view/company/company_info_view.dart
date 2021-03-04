import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:boss_app/model/company_model.dart';

class CompanyInfo extends StatelessWidget{

  final CompanyModel companyModel;
  CompanyInfo(this.companyModel);

  @override
  Widget build(BuildContext context){

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 0,
        child:Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0,bottom: 0),
              child: Image.network(companyModel.logo,width: 50.0,height: 50.0,),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: Text(companyModel.name,textAlign: TextAlign.left,style: TextStyle(fontSize: 15.0),),
                    margin: const EdgeInsets.only(top: 10.0,bottom: 5.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0,left: 0.0,right: 5.0,bottom: 5.0),
                    child: Text(companyModel.location,style: TextStyle(fontSize: 13.0,color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0,left: 0.0,right: 5.0,bottom: 5.0),
                    child: Text(companyModel.type + " | " + companyModel.size + " | " + companyModel.size,style: TextStyle(fontSize: 13.0,color: Colors.grey),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}