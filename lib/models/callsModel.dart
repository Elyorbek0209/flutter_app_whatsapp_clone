import 'package:flutter/material.dart';


class CallsModel{


  String name;

  String time;

  String avatarURL;



  CallsModel({
    
    this.name,

    this.time,

    this.avatarURL

  });


}




List<CallsModel> callsData = [


  CallsModel(

    name: 'Elyor Soliev',

    time: 'August 1,10:30 PM',

    avatarURL: "https://cdn.shopify.com/s/files/1/0880/2454/products/Likes_-_1_469x.jpg?v=1536994940",

  ),


  CallsModel(

    name: 'Makhina Solieva',

    time: 'August 1,10:30 PM',

    avatarURL: "https://cdn.shopify.com/s/files/1/0880/2454/products/DSCF5058_1200x.jpg?v=1557438630",

  ),


  CallsModel(

    name: 'Sadaf Abdujalilova',

    time: 'August 1,10:30 PM',

    avatarURL: "https://cdn.shopify.com/s/files/1/0880/2454/products/IMG_1980_1024x.jpg?v=1560547685",

  ),


  CallsModel(

    name: 'Aisha Abdujalilova',

    time: 'August 1,10:30 PM',

    avatarURL: "https://cdn.shopify.com/s/files/1/0880/2454/products/IMG_1751_1024x.jpg?v=1560188419",

  ),

];






