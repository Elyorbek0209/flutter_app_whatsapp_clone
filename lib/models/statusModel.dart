import 'package:flutter/material.dart';


class StatusModel{


  String statusName;

  String statusText;

  String avatarURL;



  StatusModel({
    
    this.statusName,

    this.statusText,

    this.avatarURL

  });

}



List<StatusModel> statusData = [


  StatusModel(

    statusName: 'My status',

    statusText: 'Tap to add status update',

    avatarURL: "https://cdn.shopify.com/s/files/1/0880/2454/products/Likes_-_1_469x.jpg?v=1536994940",
  ),


];






