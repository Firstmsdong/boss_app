import 'dart:convert';
import 'package:meta/meta.dart';

class Msg{
  final String name;
  final String avatar;
  final String company;
  final String position;
  final String msg;
//  构造方法
  Msg({
    @required this.name,
    @required this.avatar,
    @required this.company,
    @required this.position,
    @required this.msg,
  });
//  转化
  static List<Msg> fromJson (String json){
    List<Msg> _msgs = [];

    //json_decode()函数将json数据转换成数组
    // jsonEncode(user) ->就是tojson过程
    // JsonDecoder decoder = new JsonDecoder();
    // var mapData = decoder.convert(json)['list'];

    var mapData =[{
      "avatar": "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2319772070,3114389419&fm=26&gp=0.jpg",
      "name": "程玲",
      "company": "百度",
      "position": "HR",
      "msg": "好你好你好你好你好"
    },{
      "avatar": "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2319772070,3114389419&fm=26&gp=0.jpg",
      "name": "程玲",
      "company": "百度",
      "position": "HR",
      "msg": "好你好你好你好你好"
    },{
      "avatar": "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2319772070,3114389419&fm=26&gp=0.jpg",
      "name": "程玲",
      "company": "百度",
      "position": "HR",
      "msg": "好你好你好你好你好"
    }] ;
    print(mapData);
    mapData.forEach((obj){
      Msg jo = new Msg(
          name: obj['name'],
          avatar: obj['avatar'],
          company: obj['company'],
          position: obj['position'],
          msg: obj['msg']
      );
      _msgs.add(jo);
    });
    return _msgs;
  }
}