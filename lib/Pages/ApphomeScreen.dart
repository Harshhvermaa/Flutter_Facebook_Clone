

// ignore: unnecessary_import

import 'package:facebook/notification/updates.dart';
import 'package:facebook/videos/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:badges/badges.dart';

import '../friendrequest/friendrequest.dart';
import '../homedrawer/drawer.dart';
import '../messages/messagetab.dart';
import '../store/store.dart';
import 'homepage.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => HhomSscreenState();
}

class HhomSscreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
final _scaffoldkey = GlobalKey<ScaffoldState>();

late TabController _tabController;
final List<Tab> _tabs = [
const Tab(icon: Icon(Icons.home),),
const Tab(icon: Icon(Icons.group),),
const Tab(icon: Icon(Icons.message),),
 Tab(icon: Badge(
   position:  BadgePosition.topEnd(top: -18,end: -10),
   child: const Icon(Icons.notifications),
   badgeContent: const Text("3",style: TextStyle(fontSize: 18,color: Colors.white),), 
 ),),
const Tab(icon: Icon(Icons.shop_2),),
const Tab(icon: Icon(Icons.shopping_basket),),
];
@override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabs.length,
     initialIndex: 0 ,vsync:this );
  }

  Future<bool> _onwillpop() async{
    // ignore: avoid_print
    print("onwill pop");
    if(_tabController.index == 0 ){
        await SystemNavigator.pop();
    }
    Future.delayed(const Duration(milliseconds: 200),(){
      // ignore: avoid_print
      print("delayed");
      _tabController.index = 0;
    });
    // ignore: avoid_print
    print("boolean");
    return _tabController.index == 0;
  }  

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onwillpop,
      child: Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:  Text("Facebook",
          style: TextStyle(color: Colors.blue[700],
          fontFamily: 'Klavika',
          fontWeight: FontWeight.bold,
          fontSize: 40,
          ),
          ),
          actions: [
            // ignore: avoid_unnecessary_containers
            Container(
               child: IconButton(
              onPressed: ()=>{
                
              },
              icon: const Icon(Icons.search),
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              disabledColor: Colors.transparent,
              highlightColor: Colors.transparent,
              ),
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
                
              ),
            ),
            
             Container(
               margin: const EdgeInsets.symmetric(horizontal: 10.0),
               child: IconButton(
              onPressed: ()=>
                _scaffoldkey.currentState!.openEndDrawer(),
              icon: const Icon(Icons.menu),
              
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              ),
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
            // const Padding(padding: EdgeInsets.only(top: 50.0)),
            ],
            bottom: TabBar(
              tabs: _tabs,
              controller: _tabController, 
            ),
        ),
        // ignore: sized_box_for_whitespace
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          child: const HomeDrawer(),
        ),
        body:  TabBarView(
          controller: _tabController,
          children:const [
            HomeScreen2(),
            Friendrequest(),
            Messages(),
            Updates(),
            Videos(),
            Store(),
            
          ],
        ),
      ),
    );
    
  }
}