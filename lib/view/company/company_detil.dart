
// import 'dart:html' as prefix;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:boss_app/model/company_model.dart';
import 'package:boss_app/view/company/company_hot_job_view.dart';
import 'package:boss_app/view/company/company_inc.dart';
import 'package:boss_app/view/company/company_info_view.dart';
import 'package:boss_app/commponent/indicator_viewpager.dart';

const double KAppBarHeight = 256.0;

class CompanyDetail extends StatefulWidget{
   final CompanyModel companyModel;
   CompanyDetail(this.companyModel);

   @override
  CompanyDetailState createState() => CompanyDetailState();
}

class CompanyDetailState extends State<CompanyDetail> with TickerProviderStateMixin{

  List<Widget> imagesPages = [];
  List<String> urls = [
    'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=340779577,2575754627&fm=26&gp=0.jpg',
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2045472225,1544545642&fm=26&gp=0.jpg',
    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1347489433,2821625348&fm=26&gp=0.jpg'
  ];

  List<Tab> tabs;
  TabController controller;
  Widget companyTabContent;
  VoidCallback onChanged;
  int currentIndex = 0 ;

  @override
  void initState(){
    super.initState();

    if(urls.isNotEmpty){
        imagesPages = [];
        urls.forEach((String url) {
          imagesPages.add(
            Container(
              color: Colors.black.withAlpha(9),
              child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                child: new Image.network(url,fit: BoxFit.cover,height: KAppBarHeight,),
              ),
            )
          );
        });
    }

    tabs = [
      Tab(text: '公司概况',),
      Tab(text: '热招职位',),
    ];

    companyTabContent = new CompanyInc(widget.companyModel.inc);
    controller = TabController(length: tabs.length, vsync: this);
    onChanged = (){
      print(currentIndex);
       if(currentIndex == 0){
         companyTabContent = new CompanyInc(widget.companyModel.inc);
         print("00000000");
       }else{
         companyTabContent = new CompanyHotJob();
         print("10000011111");
       }
       currentIndex = this.controller.index;
    };
    controller.addListener(onChanged);
  }

  @override
  void dispose(){
    controller.removeListener(onChanged);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 245),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
               children: [
                 //轮播图片
                 SizedBox.fromSize(
                   size: const Size.fromHeight(KAppBarHeight),
                   child: IndicatorViewPager(imagesPages),
                 ),
               // 公司简介和选项卡
                 Container(
                   color: Colors.white,
                   child: Column(
                     children: [
                       CompanyInfo(widget.companyModel),
                       Divider(),
                       TabBar(
                         /**
                          * unselectedLabelColor	未选中时标签的颜色
                             labelColor	选中时标签的颜色
                             indicatorColor	指示器颜色
                             indicatorWeight	指示器高度
                             indicatorSize	指示器宽度, 值为tab或lable
                             indicator	指示器的形状, 类型为Decoratio
                          * */
                         tabs: tabs,
                         indicatorWeight: 3.0,
                         indicatorSize: TabBarIndicatorSize.tab,
                         labelStyle: TextStyle(fontSize: 16.0),
                         labelColor: Colors.black,
                         controller: controller,
                         indicatorColor: Theme.of(context).primaryColor,
                       ),
                     ],
                   ),
                 ),
                 companyTabContent,
               ],
            ),
          ),
          //  顶部返回按钮
          Container(
            padding: const EdgeInsets.all(15.0),
            child: BackButton(color: Colors.white,),

          )
        ],
      ),
    );
  }
}