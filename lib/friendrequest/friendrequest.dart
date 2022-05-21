// ignore: unused_import
import 'package:facebook/models/frindrequest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Pages/homepage.dart';
class Friendrequest extends StatefulWidget {
  const Friendrequest({ Key? key }) : super(key: key);

  @override
  State<Friendrequest> createState() => _FriendrequestState();
}

class _FriendrequestState extends State<Friendrequest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric
          (horizontal: 20.0,vertical: 15.0),
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const Text("Friends",style:
               TextStyle(fontWeight: 
               FontWeight.bold,fontSize: 35.0),
               ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                
                children: [
                  Container(
                    child:  IconButton(
                    iconSize: 30.0,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    color: Colors.green,
                    highlightColor: Colors.transparent,
                    onPressed: ()=>{},
                    icon: const Icon(Icons.person)
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300]
                    ),
                  ),
                   Container(
                     margin: const EdgeInsets.only(left: 10.0),
                    child:  IconButton(
                    iconSize: 30.0,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    color: Colors.redAccent,
                    highlightColor: Colors.transparent,
                    onPressed: ()=>{},
                    icon: const Icon(Icons.people)
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300]
                    ),
                  ), 
                ],
              ),
            )
            ],
          ),
          ),
          const Divider(
            height: 0,
          ),
          Expanded(child: ListView.builder(
            itemCount: friendrequest.length,
            itemBuilder: (context,i)=>Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top : 20.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(friendrequest[i].image),
                    ) ,
                    
                    title: Text(friendrequest[i].name),
                    trailing: Wrap(
                      spacing: 10.0,
                      children: [
                        MaterialButton(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                        height: 45.0,
                        onPressed: ()=> {},
                        color: Colors.blue,
                        child: const Text("Add Friend",
                        style: TextStyle
                        (color: Color.fromARGB(255, 46, 46, 46)),),
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                        height: 45.0,
                        onPressed: ()=> {},
                        color: const Color.fromARGB(255, 162, 162, 162),
                        child: const Text("Remove",
                        style: TextStyle
                        (color: Color.fromARGB(255, 46, 46, 46)),),
                      ),
                      ],
                    ),
                    // onTap:() {Navigator.push(context,
                    // MaterialPageRoute(builder: (context) => HomeScreen2()));},
                  ),
                )
              ],
            ) ))
          
      ],
    );
  }
}






// for(int i=0; i<friendrequest.length; i++) ...[
//             Container(
            
//             margin: EdgeInsets.only(right: 20.0,left: 10.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // ignore: avoid_unnecessary_containers
//                 Container(
//                   child: Row(
                   
//                     children: [
//                       IconButton(
//                     iconSize: 55.0,
//                     onPressed: ()=>{},
//                     icon:  CircleAvatar
//                     (backgroundImage: 
//                     AssetImage(friendrequest[i].image),
//                     radius:55.0 ,)
//                     ),
//                      Text(friendrequest[i].name,
//                     style: const TextStyle(fontSize: 20.0,
//                     ),),
//                     ],
//                   ),
//                 ),
//                 Row(
                  
//                   children: [
//                      Container(
//                       child: MaterialButton(
//                       shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5)),
//                       height: 45.0,
//                       onPressed: ()=> {},
//                       color: Colors.blueAccent,
//                       child: const Text("Add Friend",
//                       // ignore: unnecessary_const
//                       style: const TextStyle
//                       (color: Colors.white),),
//                     ),   
//                    ), 
//                    // ignore: avoid_unnecessary_containers
//                    Container(
//                      margin: const EdgeInsets.only(left: 10.0),
                    //  child: MaterialButton(
                    //   shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(5)),
                    //   height: 45.0,
                    //   onPressed: ()=> {},
                    //   color: Color.fromARGB(255, 162, 162, 162),
                    //   child: const Text("Remove",
                    //   style: TextStyle
                    //   (color: Color.fromARGB(255, 46, 46, 46)),),
                    // ),
//                    )
//                   ],
//                 )
//               ],
//             ),
//           )
//           ]