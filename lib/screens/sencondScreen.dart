import 'package:dreamsoft/component/CircleFrame.dart';

import 'package:dreamsoft/component/carDetails.dart';
import 'package:dreamsoft/component//carSlider.dart';
import 'package:dreamsoft/component/notification.dart';

import 'package:flutter/cupertino.dart';


import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class SecondScreen extends StatelessWidget {
  List<List<String>> types = [
    ["جيلى", "images/2021-Jeep-Compass-80th-Anniversary-24.jpg"],
    ["بى ام دبليو", "images/download (4).jfif"],
    ["تويوتا", "images/1551350837.jpg"],
    ["جيلى", "images/فولفو-XC90.jpg"],
    ["اودى", "images/2021-Jeep-Compass-80th-Anniversary-24.jpg"],
    ["تويوتا", "images/فولفو-XC90.jpg"],
    ["اودى", "images/1551350837.jpg"],
    ["تويوتا", "images/download (4).jfif"]
  ];

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor( Color.fromRGBO(83, 86, 110, 1.0));
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(83, 86, 110, 1.0),
                    Color.fromRGBO(118, 119, 133, 1.0),
                  ],
                )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [

                           ImageIcon(
                                AssetImage("images/bell.png"),
                                color: Colors.white,size: 27,
                              ),NotifcationIcon()


            ],
                      ),
                      Icon(
                        Icons.menu,
                        color: Colors.white,size: 26
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CarSlider(types),

              Image.asset(
                "images/BMW-X1.jpg",
                 fit: BoxFit.fill,height:250,width:double.infinity
              ),
              SizedBox(
                height: 20,
              ),
              CircleFrame([

                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text(
                      "ابحث عن سيارتك",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                ),


           Icon(
                        Icons.search,
                        size: 35,
                      ),



              ],
                  Theme.of(context).canvasColor,
                  MediaQuery.of(context).size.width * .90,
                  10,
                  MainAxisAlignment.end,8,
                  Color.fromRGBO(207, 208, 214, 1.0)),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleFrame([
                      Text(
                        "امريكى",
                        style: TextStyle(color: Colors.white),
                      )
                    ], Color.fromRGBO(65, 68, 91, 1.0), MediaQuery.of(context).size.width * .27,
                        20, MainAxisAlignment.center),
                    CircleFrame([
                      Text(
                        "اسيوى",
                        style: TextStyle(color: Colors.white),
                      )
                    ], Color.fromRGBO(65, 68, 91, 1.0), MediaQuery.of(context).size.width * .27,
                        20, MainAxisAlignment.center),
                    CircleFrame([
                      Text(
                        "اوروبى",
                        style: TextStyle(color: Colors.white),
                      )
                    ],  Color.fromRGBO(65, 68, 91, 1.0), MediaQuery.of(context).size.width * .27,
                        20, MainAxisAlignment.center)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .98,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(.50),
                        child: CarDetails(mainCard: false,image: "images/2020-jaguar-f-type-480.jpg",),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(.50),
                      child: CarDetails(mainCard: false,image: "images/2021-Jeep-Compass-80th-Anniversary-24.jpg"),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .98,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(.50),
                        child: CarDetails(mainCard: false,image: "images/2020-jaguar-f-type-480.jpg",),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(.50),
                      child: CarDetails(mainCard: false,image: "images/1551350837.jpg",),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .98,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(.50),
                        child: CarDetails(mainCard: false,image: "images/2020-jaguar-f-type-480.jpg",),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(.50),
                      child: CarDetails(mainCard: false,image: "images/1551350837.jpg",),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "images/bmw-wir-kaufen-ihr-fahrzeug-1270x420.jpg_531582640.jpg_135530156.jpg_194453563.jpg",
                fit: BoxFit.fill,height:170,width:double.infinity
              )
            ],
          ),
        ),
      ),
    );
  }
}
