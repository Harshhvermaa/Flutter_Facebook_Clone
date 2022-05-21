// ignore: unused_import
import 'package:flutter/material.dart';

import 'Pages/ApphomeScreen.dart';
void main() => runApp(MyApp());
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Facebook clone",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
