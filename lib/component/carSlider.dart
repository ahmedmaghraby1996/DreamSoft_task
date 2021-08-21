

import 'package:dreamsoft/component/roundContainer.dart';
import 'package:flutter/material.dart';

class CarSlider extends StatelessWidget{
  List<List<String>>? types;
  CarSlider(this.types);
  @override
  Widget build(BuildContext context) {

 return
   Container(
     height: 90,
     child: ListView(
       reverse: true,
       scrollDirection: Axis.horizontal,
       children: [
         ...types!
             .map(
               (e) => Padding(
             padding:
             const EdgeInsets.symmetric(horizontal: 12.0),
             child: Column(
               children: [
                RoundContainer(borderWidth: 1,borderColor: Colors.red, child: Image.asset(e[1],fit: BoxFit.cover,), radius: 60),
                 Text(e[0])
               ],
             ),
           ),
         )
             .toList(),
       ],
     ),
   );
  }


}