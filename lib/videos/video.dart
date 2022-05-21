import 'package:facebook/models/notification.dart';
import 'package:facebook/models/videos.dart';
import 'package:flutter/material.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';
class Videos extends StatefulWidget {
  const Videos({ Key? key }) : super(key: key);

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal:10.0,vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Videos",style: TextStyle(
                fontSize: 35.0,fontWeight: FontWeight.bold),),
                 // ignore: avoid_unnecessary_containers
                 Container(
                   child: Tooltip(
                     message: "Play Video Automatically",
                     child: Switch(value: isSwitched,
                     
                      onChanged: (value){
                       setState(() {
                         isSwitched=value;
                         // ignore: avoid_print
                         print(isSwitched);
                       });     
                      }
                      
                       ),
                   ),
                 )
            ]
            )
            ),
            Divider(),
            Container(
              child: Expanded(child: ListView.builder(
                itemCount: videomodels.length,
                itemBuilder: (context,i)=> Column(
                  children: [
                     Row(
            children: [
              IconButton(
                iconSize: 50.0,
                onPressed: ()=>{},
                icon:  CircleAvatar(backgroundImage: 
                AssetImage(videomodels[i].post),
                radius: 60.0,
                
                )
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child:  Text(videomodels[i].name,
                        style: const TextStyle
                        (fontWeight: FontWeight.bold,fontSize: 17.0,),),
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 10.0,
                        children:  [
                          Text(videomodels[i].time),
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
               YoutubePlayerControllerProvider(
                controller: YoutubePlayerController(

                  initialVideoId: videomodels[i].Video ?? "" ,
                  params : const YoutubePlayerParams(
                    autoPlay: false,
                    mute: false,
                    showControls: true,
                    showFullscreenButton: false, 
                  )
                  ),
                child: const YoutubePlayerIFrame(
                  aspectRatio: 16 / 9,
                ))
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
                  ],
                ))),
            )
           ]
  ); 
}
}