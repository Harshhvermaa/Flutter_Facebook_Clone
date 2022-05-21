// ignore: unused_import


import 'package:flutter/material.dart';
class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Column(
       children: [
         Container(
           margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               const Text("Marketplace",style: 
               TextStyle(fontWeight: FontWeight.bold,fontSize: 35.0 ),),
               Container(
                 child: IconButton(
                   onPressed: (() => {} )
                 , icon: const Icon(Icons.search)),
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.grey[300],
                 ),
               )  
             ],
           ),
         ),
         Divider(),
       Container(
         
         child: Column(
           children: [
             Container(
               margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Container(
                    
                    height: 300.0,
                    width: 200.0,
                    child: Stack(
                      fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Column(
                          
                          
                          children: [
                            Container(
                              child: ClipRRect(
                          borderRadius: const BorderRadius.only (
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),

                          child: Container(

                             height: 250.0,
                             width: 200.0,
                             color: Colors.black,
                             child: const Image(image: 
                             AssetImage("assets/ironman.jpg",),
                             fit: BoxFit.cover,),
                          ),
                        ),
                            ),
                             Container(
                               margin: EdgeInsets.only(top: 10.0),
                               child: TextButton(
                        
                        onPressed: ()=>{},
                        child: const Text("Superheroes On Sell",
                        style: TextStyle(color: Colors.grey,
                         fontWeight: FontWeight.bold, fontSize: 20.0),),
                        
                        ),
                             )
                          ],
                        )
                      ),
                     
                    ],
                  ),
                  decoration:    BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  border: Border.all( 
                  width: 1.0,
                  color: Color.fromARGB(255, 162, 162, 162),
                  ),
                  
                  color: Color.fromARGB(255, 255, 255, 255),
                 ),
                  ),
                Container(
                    
                    height: 300.0,
                    width: 200.0,
                    child: Stack(
                      fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Column(
                          
                          children: [
                            Container(
                              child: ClipRRect(
                          borderRadius: const BorderRadius.only (
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),

                          child: Container(

                             height: 250.0,
                             width: 200.0,
                             color: Colors.black,
                             child: const Image(image: 
                             AssetImage("assets/ironman.jpg",),
                             fit: BoxFit.cover,),
                          ),
                        ),
                            ),
                              Container(
                               margin: EdgeInsets.only(top: 10.0),
                               child: TextButton(
                        
                        onPressed: ()=>{},
                        child: const Text("Superheroes On Sell",
                        style: TextStyle(color: Colors.grey,
                         fontWeight: FontWeight.bold, fontSize: 20.0),),
                        
                        ),
                             )
                          ],
                        )
                      ),
                     
                    ],
                  ),
                  decoration:    BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  border: Border.all( 
                  width: 1.0,
                  color: Color.fromARGB(255, 162, 162, 162),
                  ),
                  
                  color: Color.fromARGB(255, 255, 255, 255),
                 ),
                  ),

                  
                 ],
               ),
             ),
             
           ],
         ),
         
       ),
        
       Container(
         
         child: Column(
           children: [
             Container(
               margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Container(
                    
                    height: 300.0,
                    width: 200.0,
                    child: Stack(
                      fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Column(
                          
                          
                          children: [
                            Container(
                              child: ClipRRect(
                          borderRadius: const BorderRadius.only (
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),

                          child: Container(

                             height: 250.0,
                             width: 200.0,
                             color: Colors.black,
                             child: const Image(image: 
                             AssetImage("assets/ironman.jpg",),
                             fit: BoxFit.cover,),
                          ),
                        ),
                            ),
                             Container(
                               margin: EdgeInsets.only(top: 10.0),
                               child: TextButton(
                        
                        onPressed: ()=>{},
                        child: const Text("Superheroes On Sell",
                        style: TextStyle(color: Colors.grey,
                         fontWeight: FontWeight.bold, fontSize: 20.0),),
                        
                        ),
                             )
                          ],
                        )
                      ),
                     
                    ],
                  ),
                  decoration:    BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  border: Border.all( 
                  width: 1.0,
                  color: Color.fromARGB(255, 162, 162, 162),
                  ),
                  
                  color: Color.fromARGB(255, 255, 255, 255),
                 ),
                  ),
                Container(
                    
                    height: 300.0,
                    width: 200.0,
                    child: Stack(
                      fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Column(
                          
                          children: [
                            Container(
                              child: ClipRRect(
                          borderRadius: const BorderRadius.only (
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),

                          child: Container(

                             height: 250.0,
                             width: 200.0,
                             color: Colors.black,
                             child: const Image(image: 
                             AssetImage("assets/ironman.jpg",),
                             fit: BoxFit.cover,),
                          ),
                        ),
                            ),
                              Container(
                               margin: EdgeInsets.only(top: 10.0),
                               child: TextButton(
                        
                        onPressed: ()=>{},
                        child: const Text("Superheroes On Sell",
                        style: TextStyle(color: Colors.grey,
                         fontWeight: FontWeight.bold, fontSize: 20.0),),
                        
                        ),
                             )
                          ],
                        )
                      ),
                     
                    ],
                  ),
                  decoration:    BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  border: Border.all( 
                  width: 1.0,
                  color: Color.fromARGB(255, 162, 162, 162),
                  ),
                  
                  color: Color.fromARGB(255, 255, 255, 255),
                 ),
                  ),

                  
                 ],
               ),
             ),
              Container(
         
         child: Column(
           children: [
             Container(
               margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Container(
                    
                    height: 300.0,
                    width: 200.0,
                    child: Stack(
                      fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Column(
                          
                          
                          children: [
                            Container(
                              child: ClipRRect(
                          borderRadius: const BorderRadius.only (
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),

                          child: Container(

                             height: 250.0,
                             width: 200.0,
                             color: Colors.black,
                             child: const Image(image: 
                             AssetImage("assets/ironman.jpg",),
                             fit: BoxFit.cover,),
                          ),
                        ),
                            ),
                             Container(
                               margin: EdgeInsets.only(top: 10.0),
                               child: TextButton(
                        
                        onPressed: ()=>{},
                        child: const Text("Superheroes On Sell",
                        style: TextStyle(color: Colors.grey,
                         fontWeight: FontWeight.bold, fontSize: 20.0),),
                        
                        ),
                             )
                          ],
                        )
                      ),
                     
                    ],
                  ),
                  decoration:    BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  border: Border.all( 
                  width: 1.0,
                  color: Color.fromARGB(255, 162, 162, 162),
                  ),
                  
                  color: Color.fromARGB(255, 255, 255, 255),
                 ),
                  ),
                Container(
                    
                    height: 300.0,
                    width: 200.0,
                    child: Stack(
                      fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        child: Column(
                          
                          children: [
                            Container(
                              child: ClipRRect(
                          borderRadius: const BorderRadius.only (
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            ),

                          child: Container(

                             height: 250.0,
                             width: 200.0,
                             color: Colors.black,
                             child: const Image(image: 
                             AssetImage("assets/ironman.jpg",),
                             fit: BoxFit.cover,),
                          ),
                        ),
                            ),
                              Container(
                               margin: EdgeInsets.only(top: 10.0),
                               child: TextButton(
                        
                        onPressed: ()=>{},
                        child: const Text("Superheroes On Sell",
                        style: TextStyle(color: Colors.grey,
                         fontWeight: FontWeight.bold, fontSize: 20.0),),
                        
                        ),
                             )
                          ],
                        )
                      ),
                     
                    ],
                  ),
                  decoration:    BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  border: Border.all( 
                  width: 1.0,
                  color: Color.fromARGB(255, 162, 162, 162),
                  ),
                  
                  color: Color.fromARGB(255, 255, 255, 255),
                 ),
                  ),

                  
                 ],
               ),
             ),
             
           ],
         ),
         
       ),
        

       ],
    ),
             
           
           
         ),
         
        ]),
        

       ],
       
    );

    
    

 
  }
}