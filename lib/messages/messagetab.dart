import 'package:facebook/models/messages.dart';
import 'package:flutter/material.dart';
class Messages extends StatefulWidget {
  const Messages({ Key? key }) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
              const Text("Messages",style: TextStyle(
                fontSize: 35.0,fontWeight: FontWeight.bold),),
            Wrap(
              spacing: 10.0,
              children: [
                Container(
                  child: IconButton(
                    iconSize: 30,
                    onPressed: ()=>{},
                    icon: const Icon(Icons.message)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                ),
                Container(
                  child: IconButton(
                    iconSize: 28,
                    onPressed: ()=>{},
                    icon: const Icon(Icons.settings)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                ),
                  
              ],
            )
            ],
            ),
            ),
            const Divider(),
            // ignore: avoid_unnecessary_containers
           Expanded(
             child: 
                  ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context,i)=> Column(
                      children:  [
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: ListTile(
                            leading:  CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(messages[i].image),
                            ),
                            title: Text(messages[i].name,style: const TextStyle
                            (fontSize: 20.0,fontWeight: FontWeight.bold),),
                        
                            subtitle: Text(messages[i].time,style: const TextStyle
                            (fontSize: 14.0,fontWeight: FontWeight.bold)),
                        
                            trailing: const Icon(Icons.phone_android,size: 25.0,),
                            
                          ),
                        )
                      ],
                    ))
                
             )
      ],
    );
  }
}