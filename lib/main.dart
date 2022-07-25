import 'package:flutter/material.dart';
import 'package:neww/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute:homelayout.routeNmae ,
      routes: {
        homelayout.routeNmae : (_) => homelayout()

      },


    );
  }
}


