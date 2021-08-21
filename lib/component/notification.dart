

import 'package:flutter/material.dart';

class NotifcationIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return
     Positioned(
         top: -.5,
         right: -.25,
         child: CircleAvatar(backgroundColor: Colors.white,child: CircleAvatar(radius: 5.75,backgroundColor: Colors.red,child: Text("2",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),),radius: 7.5,)
     );
  }

}