import 'dart:convert';
import 'package:meta/meta.dart';

class Job{
  final String name;
  final String cname;
  final String size;
  final String salary;
  final String username;
  final String title;

//  构造方法
  Job({
    @required this.name,
    @required this.cname,
    @required this.size,
    @required this.salary,
    @required this.username,
    @required this.title,
  });

//  转化
  static List<Job> fromJson (String json){
    List<Job> _jobs = [];

    //json_decode()函数将json数据转换成数组
    // jsonEncode(user) ->就是tojson过程
    JsonDecoder decoder = new JsonDecoder();
    var mapData = decoder.convert(json)['list'];
    print(mapData);
    mapData.forEach((obj){
      Job jo = new Job(
          name: obj['name'],
          cname: obj['cname'],
          size: obj['size'],
          salary: obj['salary'],
          username: obj['username'],
          title: obj['title']);

      _jobs.add(jo);
    });
    return _jobs;
  }
}