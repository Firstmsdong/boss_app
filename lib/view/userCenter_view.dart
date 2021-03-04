import 'dart:ui';
import 'package:flutter/material.dart';

class UserCenterTab extends StatefulWidget{
  @override
  UserCenterList createState() => new UserCenterList();
}

class UserCenterList extends State<UserCenterTab>{
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        backgroundColor: new Color.fromARGB(255, 242, 242, 245),
        body: new Column(
          children: [
            new Container(
              color: new Color.fromARGB(255, 0, 215, 198),
              child: Padding(
                  padding: const EdgeInsets.only(top: 80.0,left: 10.0,bottom: 30,right: 10),
                child: Row(
                 // new Image.network("",width: 50.0,height: 50.0,)
                   children: [
                     Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2787787892,1892465432&fm=26&gp=0.jpg',width: 45,height: 45,),
                     ),
                     Expanded(
                         child:Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text('迈克尔乔丹',style: TextStyle(fontSize: 15,color: Colors.white),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text('在职-百度科技有限公司',style: TextStyle(fontSize: 15,color: Colors.white),),
                                ),
                              ],
                           ),
                         )
                     ),
                   ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0,bottom:0.0,left: 10.0,right: 10.0),
              child: new Row(
                //MainAxisAlignment.spaceAround
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                    child: new Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,top: 10),
                          child: Text("590",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.black),),
                        ),
                        Text("沟通过",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.black),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                    child: new Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,top: 10),
                          child: Text("71",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.black),),
                        ),
                        Text("已通过",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.black),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                    child: new Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,top: 10),
                          child: Text("0",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.black),),
                        ),
                        Text("待面试",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.black),),
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        )
    );
  }
}