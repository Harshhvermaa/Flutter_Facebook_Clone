// ignore: unused_import
import 'package:facebook/models/story.dart';
import 'package:flutter/material.dart';
class Storybar extends StatelessWidget {
  const Storybar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.0,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all( 
                  width: 1.0,
                  color: Color.fromARGB(255, 162, 162, 162),
                  ),
                  borderRadius: BorderRadius.circular(20.0),
              ),
              height: 255,
              width: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: (() => {}),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 16.5),
                          height: 200,
                          width: 150,
                          child:  const ClipRRect(
                            borderRadius: BorderRadius.only
                            (topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)) ,
                            child: Image(
                            image: AssetImage('assets/ironman2.jpg'),
                            fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () => {},
                          child:  (const Text("Add to your story",
                          style: TextStyle(color: Color.fromARGB(255, 113, 113, 113),
                          fontSize: 14.0,fontWeight: FontWeight.bold ),
                  
                          )
                          ),
                          
                          )
                      ],
                      
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: const Positioned(
                      bottom: 36.0,
                      left: 60.0,
                      child: Icon(Icons.add_circle,size: 35.0,color: Colors.blue,), 
                    ),
                  )
                ],
              ),
            ),
            for(var i=0; i<storymodel.length; i++) ...[
              Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 162, 162, 162),
                width: 1.0),
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 255,
              width: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    child: Container(
                       height: 255,
                       width: 150,
                       child:  ClipRRect(
                         borderRadius: 
                         const BorderRadius.all(Radius.circular(20.0)),
                         child: Image(image: AssetImage(storymodel[i].image),
                         fit: BoxFit.cover,color: Colors.black38,
                         colorBlendMode: BlendMode.multiply,
                         ),
                       ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.only(left: 7.0,bottom: 7.0),
                     child: TextButton(onPressed: ()=>{},
                      child:  Text(storymodel[i].name,style: TextStyle(color: Colors.white,fontSize: 22),)),
                  )
                ],
              ),

            ),
            ]
            
          ],
        ),
      ),
    );
  }
}