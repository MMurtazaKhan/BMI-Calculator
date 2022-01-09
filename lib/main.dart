import 'package:bmi/calculate.dart';
import 'package:flutter/material.dart';

import 'Input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff302c2a),
        scaffoldBackgroundColor: Color(0xff171515),
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>InputPage(),
        '/calculate':(context)=>Calculate()
      },
    );
    
  }
}
