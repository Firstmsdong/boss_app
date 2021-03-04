import 'dart:convert';
import 'package:meta/meta.dart';

class CompanyModel{
  final String logo;
  final String name;
  final String location;
  final String type;
  final String size;
  final String employee;
  final String hot;
  final String count;
  final String inc;
//  构造方法
  CompanyModel({
    @required this.logo,
    @required this.name,
    @required this.location,
    @required this.type,
    @required this.size,
    @required this.employee,
    @required this.hot,
    @required this.count,
    @required this.inc,
  });
//  转化
  static List<CompanyModel> fromJson (String json){
    List<CompanyModel> companyList = [];

    //json_decode()函数将json数据转换成数组
    // jsonEncode(user) ->就是tojson过程
    JsonDecoder decoder = new JsonDecoder();
    var mapData = decoder.convert(json)['list'];

    /*
        *https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1602036846,2392289471&fm=26&gp=0.jpg
        *https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2586647248,3587175548&fm=26&gp=0.jpg
        * ****/


    // var  mapData =[
    //   {
    //     "logo": "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2957705046,1654500225&fm=26&gp=0.jpg",
    //     "name": "百度有限公司",
    //     "location": "北京是海淀区",
    //     "type": "互联网",
    //     "size": "B轮",
    //     "employee": "800人以上",
    //     "hot": "资深产品经理",
    //     "count": "300",
    //     "inc": "蚂蚁集团是中国最大的移动支付平台支付宝的母公司，也是全球领先的金融科技开放平台，致力于以科技推动包括金融服务业在内的全球现代服务业的数字化升级，携手合作伙伴为消费者和小微企业提供普惠、绿色、可持续的服务，为世界带来微小而美好的改变。",
    //   },
    //   {
    //     "logo": "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2957705046,1654500225&fm=26&gp=0.jpg",
    //     "name": "百度有限公司",
    //     "location": "北京是海淀区",
    //     "type": "互联网",
    //     "size": "B轮",
    //     "employee": "800人以上",
    //     "hot": "资深产品经理",
    //     "count": "300",
    //     "inc": "蚂蚁集团是中国最大的移动支付平台支付宝的母公司，也是全球领先的金融科技开放平台，致力于以科技推动包括金融服务业在内的全球现代服务业的数字化升级，携手合作伙伴为消费者和小微企业提供普惠、绿色、可持续的服务，为世界带来微小而美好的改变。",
    //   }
    // ] ;
    mapData.forEach((obj){
      CompanyModel jo = new CompanyModel(
          logo: obj['logo'],
          name: obj['name'],
          location: obj['location'],
          type: obj['type'],
          size: obj['size'],
          employee: obj['employee'],
          hot: obj['hot'],
          count: obj['count'],
          inc: obj['inc'],

      );

      companyList.add(jo);
    });
    return companyList;
  }
}