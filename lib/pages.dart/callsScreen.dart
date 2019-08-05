import 'package:flutter/material.dart';

import 'package:flutter_app_whatsup/models/callsModel.dart';




class CallsScreen extends StatefulWidget {
  
  
  @override
  _CallsScreenState createState() => _CallsScreenState();



}







class _CallsScreenState extends State<CallsScreen> {
  


  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(


      itemCount: callsData.length,

      itemBuilder: (context, i) => new Column(

        
        children: <Widget>[

          //---Divider is Dividing list of Chats
          Divider(height: 10.0,),


          ListTile(
            

            //---Here List is started with CircleAvatar photo
            leading: CircleAvatar(

              foregroundColor: Theme.of(context).primaryColor, 

              backgroundColor: Colors.grey,

              backgroundImage: NetworkImage(callsData[i].avatarURL),

            ),



            title: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,


              children: <Widget>[


                //----Name of the Person who chatted with you ---

                Text(
                  
                  callsData[i].name,
                  
                  style: TextStyle(
                    
                    fontWeight: FontWeight.bold,
                    
                  ),

                ),


                    
                Tab(

                  icon: Icon(
                    
                    Icons.video_call,

                    color: Color(0xff00796B),

                    size: 30.0,
                    
                  ),

                ),


              ],

            ),



            subtitle: Container(

              padding: EdgeInsets.only(top: 5.0),

              child: Text(
                
                callsData[i].time,

                style: TextStyle(

                  fontWeight: FontWeight.normal,

                  color: Colors.grey,

                  fontSize: 14.0

                ),

              ),

            ),
            

          )

        ],

      ),


    );

  }
  
}




