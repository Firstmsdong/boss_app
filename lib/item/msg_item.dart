import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:boss_app/model/msg_model.dart';

class MsgListItem extends StatelessWidget{
  final Msg msg;
  MsgListItem(this.msg);

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
        child: new Card(
          elevation: 0.0,
          child: new Row(
            children: <Widget>[
              new Padding(
                  padding: const EdgeInsets.only(top: 5.0,left: 15.0,right: 15.0,bottom: 0.0),
                  child: new CircleAvatar(radius: 2.0,backgroundImage: new NetworkImage(msg.avatar),),
              ),
              new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      new Container(
                        child: new Text(msg.name,textAlign: TextAlign.left,style: TextStyle(fontSize: 13.0),),
                      ),
                      new Padding(
                          padding: const EdgeInsets.only(top: 5.0,left: 0.0,right: 5.0,bottom: 10.0),
                          child: Text(msg.company + " | " + msg.position,style: TextStyle(fontSize: 13.0,color: Colors.grey),),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 5.0,left: 0.0,right: 5.0,bottom: 5.0),
                        child: Text(msg.msg,style: TextStyle(fontSize: 13.0,color: Colors.grey),),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      );

  }

}