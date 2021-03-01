import 'package:flutter/material.dart';
import 'package:boss_app/splash.dart';
void main(){
  runApp(new MaterialApp(
    title: "boss直聘",
    //主题色调
    theme: new ThemeData(
      primaryIconTheme: const IconThemeData(color: Colors.white),
      brightness: Brightness.light,
      //主色调
      primaryColor: new Color.fromARGB(255, 0, 215, 198),
      accentColor: Colors.cyan[300],
    ),
    home: new SplashPage(),
  ));
}


