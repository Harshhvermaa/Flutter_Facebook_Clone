// ignore: unused_import
import 'dart:ui';

import 'package:flutter/material.dart';
class PostBar extends StatelessWidget {
  const PostBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      
      children: [
        IconButton(
          splashRadius: 40.0,
         iconSize: 70.0,
        onPressed: ()=> {},
        icon: const CircleAvatar(
          radius: 100.0,
          backgroundImage: AssetImage("assets/ironman.jpg"),
        )
        ),
        TextButton(
          onPressed:  ()=> {},
         child: const Text("What's in your mind",
         style: TextStyle(
           color: Color.fromARGB(255, 162, 162, 162),
           fontSize: 20.0,
           fontWeight: FontWeight.normal
         ),
        ),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          height:  60,
          child: const VerticalDivider(
            color: Color.fromARGB(255, 162, 162, 162),
          ),
        ),
        Column(
            children: [
              IconButton(
                onPressed: ()=>{}, 
                icon: const Icon(Icons.photo_album_outlined,
                color: Color.fromARGB(255, 79, 79, 79),)),
                const Text("Photo"),
            ],
        )
      ],
    );
  }
}