import 'dart:ui';
import 'package:boss_app/view/company/company_detil.dart';
import 'package:flutter/material.dart';
import 'package:boss_app/model/company_model.dart';
import 'package:boss_app/item/company_item.dart';

class CompanyTab extends StatefulWidget{
  @override
  CompanyList createState() => new CompanyList();
}
class CompanyList extends State<CompanyTab>{
  List<CompanyModel> companies =[];

  @override
  void initState(){
    super.initState();
    getCompanyList();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        backgroundColor: new Color.fromARGB(255, 242, 242, 245),
        appBar: new AppBar(
          elevation: 0.0,
          title: new Text('公司', style: TextStyle(fontSize: 20.0,color: Colors.white),),
        ),
        body: new ListView.builder(itemCount: companies.length,itemBuilder: buildCompanyItem)
    );
  }

  Widget buildCompanyItem(BuildContext context,int index){
    CompanyModel company = companies[index];
    print("1");
    print(companies.length);
    print("2");
    var companyItem =   new InkWell(
      child: new CompanyListItem(company),
      onTap: (){
      //  页面跳转
          navCompanyDetail(company, index);
      },
    );
    return companyItem;
  }
  void getCompanyList(){
    /*
    * https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2957705046,1654500225&fm=26&gp=0.jpg
    * */
    setState(() {
      companies = CompanyModel.fromJson("""
          {
           "list":[
           {
              "logo": "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2957705046,1654500225&fm=26&gp=0.jpg",
              "name": "百度有限公司",
              "location": "北京是海淀区",
              "type": "互联网",
              "size": "B轮",
              "employee": "800人以上",
              "hot": "资深产品经理",
              "count": "300",
               "inc": "蚂蚁集团是中国最大的移动支付平台支付宝的母公司，也是全球领先的金融科技开放平台，致力于以科技推动包括金融服务业在内的全球现代服务业的数字化升级，携手合作伙伴为消费者和小微企业提供普惠、绿色、可持续的服务，为世界带来微小而美好的改变。"

           }
           ]
          }
         """
      );
    });
  }

  navCompanyDetail(CompanyModel model,int index){
    Navigator.of(context).push(
        PageRouteBuilder(
            opaque: false,
            pageBuilder: (BuildContext context,_,__){
              return CompanyDetail(model);
            },
          transitionsBuilder: (_,Animation<double> animation,__,Widget child){
              return FadeTransition(
                  opacity:animation,
                child: SlideTransition(position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),child: child),
              );
          }
        )
    );
  }
}