import 'dart:async';
import 'package:flutter/material.dart';
import 'package:boss_app/commponent/icon_tab.dart';
import 'package:boss_app/view/job_view.dart';
import 'package:boss_app/view/msg_view.dart';
import 'package:boss_app/view/company/company_view.dart';
import 'package:boss_app/view/userCenter_view.dart';
class BossApp extends StatefulWidget {

  @override
  HomeState createState() => new HomeState();
}

//定义切换的一些参数
const double _kTabTextSize = 11.0;
const int INDEX_JOB = 0;
const int INDEX_COMPANY = 1;
const int INDEX_MESSAGE = 2;
const int INDEX_MINE = 3;
Color _kPrimaryColor = new Color.fromARGB(255, 0, 215, 198);

class HomeState extends State<BossApp> with SingleTickerProviderStateMixin {

  //默认选中第0个选项
  int _currentIndex = 0;
  //底部导航栏
  TabController _controller;
  //定义无参数的回调函数
  VoidCallback onChanged;

  @override
  void initState(){
    super.initState();
    _controller = new TabController(length: 4, vsync: this,initialIndex: _currentIndex);
    onChanged(){
      setState(() {
        _currentIndex = this._controller.index;
      });
    }
    _controller.addListener(onChanged);
  }

  @override
  void dispose(){
    super.dispose();
  }
  //布局启动页面
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new TabBarView(
        children:<Widget>[
          new JobsTab(),
          new CompanyTab(),
          new MsgTab(),
          new UserCenterTab(),
        ],
        controller: _controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
          //绑定controller
            controller: _controller,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: new TextStyle(fontSize: _kTabTextSize),
            tabs: [
              new IconTab(
                  icon: _currentIndex == INDEX_JOB ? "assets/images/home.png" : "assets/images/home-hl.png",
                  text: "职位",
                  color: _currentIndex == INDEX_JOB ? _kPrimaryColor : Colors.grey[900]
              ),
              new IconTab(
                  icon: _currentIndex == INDEX_COMPANY ? "assets/images/home.png" : "assets/images/home-hl.png",
                  text: "公司",
                  color: _currentIndex == INDEX_COMPANY ? _kPrimaryColor : Colors.grey[900]
              ),
              new IconTab(
                  icon: _currentIndex == INDEX_MESSAGE ? "assets/images/category.png" : "assets/images/category-hl.png",
                  text: "消息",
                  color: _currentIndex == INDEX_MESSAGE ? _kPrimaryColor : Colors.grey[900]
              ),
              new IconTab(
                  icon: _currentIndex == INDEX_MINE ? "assets/images/home.png" : "assets/images/home-hl.png",
                  text: "我的",
                  color: _currentIndex == INDEX_MINE ? _kPrimaryColor : Colors.grey[900]
              )
            ]
        ),
      ),
    );
  }

}