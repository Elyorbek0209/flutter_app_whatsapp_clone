import 'package:flutter/material.dart';

import 'package:flutter_app_whatsup/models/statusModel.dart';


class StatusScreen extends StatefulWidget {
  


  @override
  _StatusScreenState createState() => _StatusScreenState();

}





class _StatusScreenState extends State<StatusScreen> {
  
  
  @override
  Widget build(BuildContext context) {
   
   
    return ListView.builder(


      itemCount: statusData.length,

      itemBuilder: (context, i) => new Column(

        
        children: <Widget>[

          //---Divider is Dividing list of Chats
          Divider(height: 10.0,),


          ListTile(
            

            //---Here List is started with CircleAvatar photo
            leading: CircleAvatar(

              foregroundColor: Theme.of(context).primaryColor, 

              backgroundColor: Colors.grey,

              backgroundImage: NetworkImage(statusData[i].avatarURL),

            ),



            title: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,


              children: <Widget>[


                //----Name of the Person who chatted with you ---

                Text(
                  
                  statusData[i].statusName,
                  
                  style: TextStyle(
                    
                    fontWeight: FontWeight.bold,
                    
                  ),

                ),

              ],

            ),



            subtitle: Container(

              padding: EdgeInsets.only(top: 5.0),

              child: Text(
                
                statusData[i].statusText,

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



