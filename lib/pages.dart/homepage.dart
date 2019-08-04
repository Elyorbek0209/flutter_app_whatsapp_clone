import 'package:flutter/material.dart';

import 'package:flutter_app_whatsup/pages.dart/callsScreen.dart';

import 'package:flutter_app_whatsup/pages.dart/cameraScreen.dart';

import 'package:flutter_app_whatsup/pages.dart/chatScreen.dart';

import 'package:flutter_app_whatsup/pages.dart/statusScreen.dart';





class HomePage extends StatefulWidget {

  HomePage(this.colorVal);

  int colorVal;

  @override
  _HomePageState createState() => _HomePageState();

}






class _HomePageState extends State<HomePage> 

  with SingleTickerProviderStateMixin{
  
  TabController _tabController;


  
  @override
    void initState(){

      super.initState();

      _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);

      _tabController.addListener(_handleTabSelection);

    }

    void _handleTabSelection(){

      setState(() {
        widget.colorVal = 0xff00796B;
      });

    }





  @override
  Widget build(BuildContext context) {
   
    return Scaffold(


      //-----APP BAR BEGINDS----

      appBar: AppBar(

        title: new Text(
          
          'WhatsApp',

        ),

        elevation: 0.7,

        bottom: TabBar(

          controller: _tabController,

          //---Color of the 2nd Layer App Bottom Line

          indicatorColor: Colors.white,

          unselectedLabelColor: Colors.grey,



          tabs: <Widget>[



            Tab(

              icon: Icon(Icons.camera_alt),

            ),




            Tab(

              child: Text(

                'CHATS',

                style: TextStyle(

                  fontSize: 16.0,

                ),

              ),

            ),




            Tab(

              child: Text(

                'STATUS',

                style: TextStyle(

                  fontSize: 16.0,

                ),

              ),

            ),




            Tab(

              child: Text(

                'CALLS',

                style: TextStyle(

                  fontSize: 16.0,

                ),

              ),

            ),



          ],

        ),


        actions: <Widget>[

          Icon(Icons.search),

          Padding(

          padding: EdgeInsets.symmetric(horizontal: 8.0),

          ),

          Icon(Icons.more_vert),

        ],


      ),

      //-----APP BAR ENDS----



      //----BODY PART OF APP BEGINS 

      body: TabBarView(


        controller: _tabController,


        children: <Widget>[


          CameraScreen(),

          ChatScreen(),

          StatusScreen(),

          CallsScreen(),
          

        ],

      ),


      floatingActionButton: FloatingActionButton(

        backgroundColor: Theme.of(context).accentColor,

        child: Icon(
          
          Icons.message,
          
          color: Colors.white,
        
        ),



        onPressed: (){

          //

        },

      ),

      
    );

  }

}



