

import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget{
  String? text;
  Widget? screen;
  Mybutton({@required this.text,@required this.screen});
  @override
  Widget build(BuildContext context) {
   return
     Expanded(
       child: Card(
         child: InkWell(
           onTap: () => Navigator.of(context)
               .push(MaterialPageRoute(builder: (contex) => screen!)),
           child: Text(text!,
               style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
         ),
       ),
     );
  }

}