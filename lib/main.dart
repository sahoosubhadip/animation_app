import 'package:animation_app/Home.dart';
import 'package:animation_app/frontpage_animation/ui/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor:Colors.brown[800],
        //Color(0xff029EB9)
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.brown[800],
        fontFamily: 'OpenSens',
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
