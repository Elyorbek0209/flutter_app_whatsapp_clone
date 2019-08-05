import 'package:flutter/material.dart';



class PopUpList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
   
    return Column(

      children: <Widget>[

       
        Padding(

          padding: EdgeInsets.all(1.0),

          child: Container(

            child: Text("New group"),

          ),
          
        ),


        Padding(

          padding: EdgeInsets.all(8.0),

          child: Container(

            child: Text("New broadcast"),

          ),
          
        ),

        

         Padding(

          padding: EdgeInsets.all(8.0),

          child: Container(

            child: Text("WhatsApp Web"),

          ),
          
        ),


        Padding(

          padding: EdgeInsets.all(8.0),

          child: Container(

            child: Text("Starred messages"),

          ),
          
        ),


        Padding(

          padding: EdgeInsets.all(8.0),

          child: Container(

            child: Text("Settings"),

          ),
          
        ),


      ],


    );

  
  }
}