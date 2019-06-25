import 'package:flutter/material.dart';
import 'package:libraryapp/About.dart';
import 'package:libraryapp/Home.dart';
import 'package:libraryapp/Login.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'کتاب خونه الکترونیکی',
      initialRoute: '/login',
      routes: {
        '/' : (context) => Home(),
        '/login' : (context) => Login(),
        '/about' :(context) => About()
      },
    );
  }
}