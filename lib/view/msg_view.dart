import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:boss_app/model/msg_model.dart';
import 'package:boss_app/item/msg_item.dart';

class MsgTab extends StatefulWidget{
  @override
  MsgList createState() => new MsgList();
}

class MsgList extends State<MsgTab>{
  List<Msg> _msgs =[];

  @override
  void initState(){
    super.initState();
    getMsgList();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        backgroundColor: new Color.fromARGB(255, 242, 242, 245),
        appBar: new AppBar(
          elevation: 0.0,
          title: new Text('消息', style: TextStyle(fontSize: 20.0,color: Colors.white),),
        ),
        body: new ListView.builder(itemCount: _msgs.length,itemBuilder: buildMsgItem)
    );
  }

  Widget buildMsgItem(BuildContext context,int index){
    Msg msg = _msgs[index];
    var msgItem =   new InkWell(
      child: new MsgListItem(msg),
      onTap: (){},
    );
    return msgItem;
  }
  void getMsgList(){
    setState(() {
      _msgs = Msg.fromJson(""
       //    """"
       // {
       //   "list":[
       //     {
       //       "avatar":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2319772070,3114389419&fm=26&gp=0.jpg",
       //       "name":"程玲",
       //       "company":"百度",
       //       "position":"HR",
       //       "msg":"你好你好!你好你好！你好你好！你好你好！",
       //     },
       //     {
       //       "avatar":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg1.touxiang.cn%2Fuploads%2F20130124%2F24-030839_371.jpg&refer=http%3A%2F%2Fimg1.touxiang.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617258788&t=c28c5485d3b178321dfe9aa747df45ab",
       //       "name":"龙龙",
       //       "company":"阿里",
       //       "position":"HR",
       //       "msg":"你好你好",
       //     },
       //   ]
       // }
       // """
      );
    });
  }
}