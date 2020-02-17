import 'package:app_distribuida/pages/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simplifica AED ',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue, 
         primaryTextTheme: TextTheme(
            title: TextStyle(
               color: Colors.white
            )
          )
      ),
      home: Login(),
      
    );
  }
}