// ignore: unused_import
import 'package:facebook/Pages/post.dart';
import 'package:facebook/Pages/postbar.dart';
import 'package:flutter/material.dart';

import 'menubar.dart';
import 'storybar.dart';
class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({ Key? key }) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: ListView(
        children:const [
          PostBar(),//Postbar
          Divider(
            thickness: 1.0,
            color: Color.fromARGB(255, 162, 162, 162),
          ),
          MenuBar(),//menubar
          Divider(
            thickness: 7.0,
            color: Color.fromARGB(255, 162, 162, 162),
          ),
          Storybar(),//storybar
           Divider(
            thickness: 7.0,
            color: Color.fromARGB(255, 162, 162, 162),
          ),
          Postbar(),//postbar
           
        ]
      ),
    );
  }
}