// ignore: unused_import
import 'package:flutter/material.dart';
class HomeDrawer extends StatelessWidget {
  const HomeDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (() => {Navigator.of(context).pop()}),
                     icon: Icon(Icons.arrow_back)),
                  const Text("Menu",style: 
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0
                    ),),
                    IconButton(
                    onPressed: (() => {}),
                     icon: Icon(Icons.search)),
                ],
              ) 
            ),
          ),
          Expanded(child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/ironman2.jpg"),
                ),
                title: Text("Rahul singh",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold ),),
                subtitle: Text("Inevitable"),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(Icons.coronavirus_rounded,color: Colors.red,),
                title: Text("Covid 19 Information Center"),
              ),
              ListTile(
                leading: Icon(Icons.message_sharp,color: Colors.green),
                title: Text("Messages"),
              ),
              ListTile(
                 leading: Icon(Icons.people,color: Colors.blue),
                title: Text("Groups"),
              ),
              ListTile(
                 leading: Icon(Icons.shopping_bag,color: Colors.red),
                title: Text("Market"),
              ),
              ListTile(
                 leading: Icon(Icons.coronavirus_rounded),
                title: Text("Friends"),
              ),
              ListTile(
                 leading: Icon(Icons.video_call_sharp,color: Colors.blue),
                title: Text("Videos"),
              ),
              ListTile(
                 leading: Icon(Icons.contact_page_sharp,color: Colors.red),
                title: Text("Pages"),
              ),
              ListTile(
                 leading: Icon(Icons.settings,color: Colors.green),
                title: Text("Settings"),
              ),
              ListTile(
                 leading: Icon(Icons.wifi_password,color: Colors.black),
                title: Text("Privacy policy"),
              ),
              ListTile(
                 leading: Icon(Icons.shopping_bag),
                title: Text("Market"),
              ),
              ListTile(
                 leading: Icon(Icons.coronavirus_rounded,color: Colors.red),
                title: Text("Friends"),
              ),
            ],
          ))
        ],
      ),
    );
  }
}