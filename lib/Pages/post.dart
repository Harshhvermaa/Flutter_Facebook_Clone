// ignore: unused_import
import 'package:flutter/material.dart';

import '../models/postmodels.dart';
class Postbar extends StatelessWidget {
  const Postbar({ Key? key }) : super(key: key);

  @override
  // ignore: curly_braces_in_flow_control_structures
  Widget build(BuildContext context) {
    
    return Container(
      
       margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          for(int i=0; i<postmodels.length; i++) ...[
              Row(
            children: [
              IconButton(
                iconSize: 50.0,
                onPressed: ()=>{},
                icon:  CircleAvatar(backgroundImage: 
                AssetImage(postmodels[i].image),
                radius: 60.0,
                
                )
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child:  Text(postmodels[i].name,
                        style: const TextStyle
                        (fontWeight: FontWeight.bold,fontSize: 17.0,),),
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 10.0,
                        children:  [
                          Text(postmodels[i].time),
                          Icon(Icons.public_rounded)
                        ],
                      )
                      
                    ],
                  ),
                ),
                  const Icon(Icons.more_horiz),
                ],   
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(postmodels[i].title)),
                 Image(image: AssetImage(postmodels[i].post))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children:  [
                  IconButton(
                    onPressed: ()=>{},
                     icon: Icon(Icons.thumb_up)),
                     Text("23"),
                     ],   
              ),
              Row(
                children:  [
                  IconButton(
                    onPressed: ()=>{},
                     icon: Icon(Icons.comment)),
                     Text("23"),
                     ],   
              ),
              Row(
                children:  [
                  IconButton(
                    onPressed: ()=>{},
                     icon: Icon(Icons.share)),
                     Text("23"),
                     ],   
              )
            ],
            
          ),
          const Divider(
            color: Colors.transparent,
            height: 20.0,
          )
          ]
          
        ],
      ),
    );
  }
}