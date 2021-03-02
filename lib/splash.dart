import 'dart:async';
import 'package:flutter/material.dart';
import 'package:boss_app/home.dart';

class SplashPage extends StatefulWidget {

  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<SplashPage> {

  Timer _t;

  @override
  void initState(){
    super.initState();
    _t = new Timer(const Duration(milliseconds: 150), (){

      try{
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context)=>new BossApp()),(Route route) => route == null);
      }catch(e){

      }

    });
  }

  @override
  void dispose(){
    _t.cancel();
    super.dispose();
  }
  //布局启动页面
  @override
  Widget build(BuildContext context){
    return new Material(
      color: new Color.fromARGB(255, 0, 215, 198),
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Text("BOSS直聘",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400),),
          ],
        ),
      ),
    );
  }

}