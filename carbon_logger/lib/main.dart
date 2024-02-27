import 'package:flutter/material.dart';
import 'package:carbon_logger/pages/login.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hintColor: Colors.greenAccent,
        hoverColor: Colors.greenAccent,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black54,
        focusColor: Colors.greenAccent,
        inputDecorationTheme: const InputDecorationTheme(
          hoverColor: Colors.greenAccent,
          border: OutlineInputBorder(
          ),
          labelStyle: TextStyle(
            color: Colors.greenAccent,
          )
        )
      ),
      home: const Login(),
    );
  }
}
