import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:boss_app/model/job_model.dart';

class JobListItem extends StatelessWidget{
  final Job job;
  JobListItem(this.job);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(top: 3.0,left: 5.0,right: 5.0,bottom: 3.0),
      child: new SizedBox(
        child: new Card(
          elevation: 0.0,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          new Padding(
                            padding: const EdgeInsets.only(top: 10,left: 10,bottom: 5.0),
                            child: new Text(job.name),
                          ),
                          new Expanded(
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                new Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    job.salary,
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0,left: 10.0,bottom: 5.0),
                        child: new Text(
                          job.cname + '' + job.size,
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              fontSize: 15.0,color: Colors.grey
                          ),
                        ),
                      ),
                      new Divider(),
                      new Row(
                        children: [
                          new Padding(
                            padding: const EdgeInsets.only(top: 5.0,left: 10.0,right: 15.0,bottom: 15.0),
                            child: new Text(
                              job.username + ' | ' + job.title,
                              style: new TextStyle(
                                color: new Color.fromARGB(255, 0, 215, 198),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

}