import 'package:flutter/material.dart';

import 'package:flutter_app_whatsup/pages.dart/homepage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'WhatsApp',

      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primaryColor: Color(0xff075e54),

        accentColor: new Color(0xff25d366),

      ),

      home: HomePage(0xff00796B),
    
    );
  
  }

}