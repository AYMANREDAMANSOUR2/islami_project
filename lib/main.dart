import 'package:flutter/material.dart';
import 'package:neww/Tabs/home_layout.dart';
import 'package:neww/themes.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false ,
      initialRoute:homelayout.routeNmae ,
      routes: {
        homelayout.routeNmae : (_) => homelayout()
      },
      theme: MyThemeData.lighttheme,

    );
  }
}


