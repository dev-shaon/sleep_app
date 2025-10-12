import 'package:flutter/material.dart';
import 'package:sleep_app/WelcomeScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "sleep",
      home: WelcomeScreen(),
    );
  }
}