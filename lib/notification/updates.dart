import 'package:facebook/models/notification.dart';
import 'package:flutter/material.dart';
class Updates extends StatefulWidget {
  const Updates({ Key? key }) : super(key: key);

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
           margin: EdgeInsets.symmetric(horizontal:10.0,vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Notification",style: TextStyle(
                fontSize: 35.0,fontWeight: FontWeight.bold),),
            Wrap(
              spacing: 10.0,
              children: [
                Container(
                  child: IconButton(
                    iconSize: 30,
                    onPressed: ()=>{},
                    tooltip: "View All Notifications",
                    icon: const Icon(Icons.notification_add)),
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
                    itemCount:notification.length,
                    itemBuilder: (context,i)=> Column(
                      children:  [
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: ListTile(
                            leading:  CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(notification[i].image),
                            ),
                            title: Text(notification[i].name,style: const TextStyle
                            (fontSize: 20.0,fontWeight: FontWeight.bold),),
                        
                            subtitle: Text(notification[i].time,style: const TextStyle
                            (fontSize: 14.0,fontWeight: FontWeight.bold)),
                        
                            trailing: IconButton(onPressed: ()=>{},
                             icon: Icon(Icons.more_vert))
                            
                          ),
                        )
                      ],
                    ))
                
             )
      ],
    );
  }
}