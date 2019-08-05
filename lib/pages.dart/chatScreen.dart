import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app_whatsup/models/chatModel.dart';



class ChatScreen extends StatefulWidget {
 
  
  @override
  _ChatScreenState createState() => _ChatScreenState();



}






class _ChatScreenState extends State<ChatScreen> {
  
  
  @override
  Widget build(BuildContext context) {
  
  
    return ListView.builder(


      itemCount: data.length,

      itemBuilder: (context, i) => new Column(

        
        children: <Widget>[

          //---Divider is Dividing list of Chats
          Divider(height: 10.0,),


          ListTile(
            

            //---Here List is started with CircleAvatar photo
            leading: CircleAvatar(

              foregroundColor: Theme.of(context).primaryColor, 

              backgroundColor: Colors.grey,

              backgroundImage: NetworkImage(data[i].avatarURL),

            ),



            title: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,


              children: <Widget>[


                //----Name of the Person who chatted with you ---

                Text(
                  
                  data[i].name,
                  
                  style: TextStyle(
                    
                    fontWeight: FontWeight.bold,
                    
                  ),

                ),


                //----Time of the chatted with you ---

                Text(
                  
                  data[i].time,
                  
                  style: TextStyle(
                    
                    fontWeight: FontWeight.normal,

                    color: Colors.grey,

                    fontSize: 14.0
                    
                  ),

                ),


              ],

            ),



            subtitle: Container(

              padding: EdgeInsets.only(top: 5.0),

              child: Text(
                
                data[i].message,

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



