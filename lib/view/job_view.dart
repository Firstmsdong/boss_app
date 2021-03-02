import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:boss_app/model/job_model.dart';
import 'package:boss_app/item/job_item.dart';

class JobsTab extends StatefulWidget{
  @override
  JobList createState() => new JobList();
}

class JobList extends State<JobsTab>{
  List<Job> _jobs =[];

  @override
  void initState(){
    super.initState();
    getJobList();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: new Color.fromARGB(255, 242, 242, 245),
      appBar: new AppBar(
        elevation: 0.0,
        title: new Text(
          'Android',
          style: TextStyle(fontSize: 20.0,color: Colors.white),
        ),
      ),
      body: Container(
        color: Color(0xFFf4f4f4),
        child: Text("我写的首页"),
      )
      // new ListView.builder(
      //     itemCount: _jobs.length,
      //     itemBuilder: buildJobItem),
    );
  }


  Widget buildJobItem(BuildContext context,int index){
    Job job = _jobs[index];
    var jobItem =   new InkWell(
      onTap: (){
        
      },
    );
  }
  void getJobList(){
    setState(() {
      // _jobs = Job.fromJson(""""
      //  {
      //    "list":[
      //      {
      //        "name":"架构师（iOS）",
      //        "cname":"蚂蚁金服",
      //        "size":"B轮",
      //        "salary":"25k-30k",
      //
      //        "username":"小马",
      //        "title":"HR",
      //      },
      //      {
      //        "name":"架构师（iOS）22",
      //        "cname":"蚂蚁金服22",
      //        "size":"B轮22",
      //        "salary":"25k-30k22",
      //        "username":"小马44",
      //        "title":"HR55",
      //      },
      //    ]
      //  }
      // """);
    });

    print(_jobs);

  }
}