// import 'package:chatapp/pages/homepage.dart';
import 'package:chatapp/pages/login.dart';
import 'package:chatapp/themes/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoginPage(),
      theme: lightMode,
    );
  }
}
