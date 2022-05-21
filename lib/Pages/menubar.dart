// ignore: unused_import
import 'package:flutter/material.dart';
class MenuBar extends StatelessWidget {
  const MenuBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Row(
           children: [
             IconButton(
               onPressed: () => {},
               icon: Icon(Icons.book),
               color: Colors.blue[700],
               iconSize: 30.0,
               ),
               const Text("Text")
           ],
         ),
         Container(
          height: 50.0,
          child: const VerticalDivider(
            color: Color.fromARGB(255, 162, 162, 162),
          ),
         ),
         
          Row(
           children: [
             IconButton(
               onPressed: () => {},
               icon: Icon(Icons.video_call),
               color: Colors.red,
               iconSize: 30.0,
               ),
               const Text("Live video")
           ],
         ),
          Container(
          height: 50.0,
          child: const VerticalDivider(
            color: Color.fromARGB(255, 162, 162, 162),
          ),
         ),
          Row(
           children: [
             IconButton(
               onPressed: () => {},
               icon: Icon(Icons.location_on),
               color: Colors.red,
               iconSize: 30.0,
               ),
               const Text("Text")
           ],
         ),
         
      ],
    );
  }
}