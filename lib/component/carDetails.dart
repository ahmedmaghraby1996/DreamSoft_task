import 'package:dreamsoft/component/DetailIcon.dart';
import 'package:dreamsoft/component/Image_Contrl.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  bool? mainCard;
  String? image;
  double? iconSize, space, padding;
  TextStyle size =
      TextStyle(fontSize: 13, color: Color.fromRGBO(147, 149, 167, 1.0));

  CarDetails({@required this.mainCard, @required this.image});

  @override
  Widget build(BuildContext context) {
    if (mainCard == true) {
      padding = 4;

      iconSize = 37;
      space = MediaQuery.of(context).size.width * .08;
    } else {
      padding = 1;
      size = TextStyle(fontSize: 10);
      iconSize = 17;
      space = 0;
    }
    return Stack(
      children: [
        Column(
          children: [
            Container(
                height: mainCard == false ? 140 : 300,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(image!, fit: BoxFit.fill)),
            Container(
              height: mainCard == false ? 39 : 80,
            )
          ],
        ),
        mainCard == true
            ? Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 6),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: ImageControls("images/heart.png"),
                          ),
                          ImageControls("images/share.png"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child:
                          ImageControls("images/arrow-pointing-to-right.png"),
                    )
                  ],
                ),
              )
            : Positioned(
          right: 0,left: 0,
          top: 0,
              child: Container(
                  color: Color.fromRGBO(255, 255, 255, .7),
                  child: Text(
                    "جى ام سى يوكن | يوكن | الفئه الرابعة ",
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                ),
            ),
        Positioned(
          bottom: 0,
          right: space,
          left: space,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                mainCard == false
                    ? DetailIcon(
                        color: Colors.black,
                        size: size,
                        padding: padding,
                        iconSize: iconSize,
                        icon: "images/verified-protection.png",
                        bottext: "2021",
                        toptext: "مكفوله ل")
                    : Container(),
                DetailIcon(
                    color: Color.fromRGBO(204, 148, 63, 1.0),
                    size: size,
                    padding: padding,
                    iconSize: iconSize,
                    icon: "images/speedometer (2).png",
                    bottext: "2000",
                    toptext: mainCard == false ? "كم" : "المشى"),
                DetailIcon(
                    color: Color.fromRGBO(114, 139, 121, 1.0),
                    size: size,
                    padding: padding,
                    iconSize: iconSize,
                    icon: "images/weekly-calendar.png",
                    bottext: "2019",
                    toptext: "سنه الصنع"),
                mainCard == false
                    ? DetailIcon(
                        color: Colors.blue,
                        size: size,
                        padding: padding,
                        iconSize: iconSize,
                        icon: "images/vignette.png",
                        bottext: "12,700",
                        toptext: "السعر")
                    : Container(),
                mainCard == true
                    ? DetailIcon(
                        color: Color.fromRGBO(77, 109, 145, 1.0),
                        size: size,
                        padding: padding,
                        iconSize: iconSize,
                        icon: "images/car.png",
                        bottext: "6",
                        toptext: "المحرك/سلندر")
                    : Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
