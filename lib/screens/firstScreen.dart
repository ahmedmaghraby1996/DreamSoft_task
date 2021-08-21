import 'package:dreamsoft/component/CircleFrame.dart';

import 'package:dreamsoft/component/Options.dart';
import 'package:dreamsoft/component/carDetails.dart';
import 'package:dreamsoft/component/roundContainer.dart';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  double? bigframe;
  List<List<Object>> options = [
    ["images/sedan-car-front.png", "اللون الخارجلى", "ابيض"],
    ["images/sports-car.png", "اللون الداخلى", "بيج"],
    ["images/seat.png", "نوع المقعد", " محمل "],
    ["images/car (2).png", "فتحه السقف", Icons.done],
    ["images/cctv.png", "كاميرا خلفيه", Icons.done],
    ["images/car (1).png", "سينسور", " امامى - خلفى "],
    ["images/gear (1).png", "سليندر", "6"],
    ["images/gear.png", "ناقل الحركه", " اوتوماتيك "]
  ];

  @override
  Widget build(BuildContext context) {
    bigframe = MediaQuery.of(context).size.width * .95;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarDetails(
                mainCard: true,
                image: "images/download (3).jfif",
              ),
              SizedBox(
                height: 10,
              ),
              CircleFrame([
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        "    د.ك",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Text(
                      "8,700",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "يوكن بحاله جيدة",
                  style: TextStyle(
                      color: Color.fromRGBO(55, 59, 85, 1.0),
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                )
              ], Theme.of(context).canvasColor, bigframe, 20,
                  MainAxisAlignment.spaceBetween),
              SizedBox(
                height: 10,
              ),
              CircleFrame([
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "مكفوله حتى 70000 كم",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    textAlign: TextAlign.end,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ImageIcon(
                    AssetImage("images/verified-protection.png"),
                    size: 23,
                    color: Colors.white,
                  ),
                ),
              ], Color.fromRGBO(165, 89, 89, 1.0), bigframe, 20,
                  MainAxisAlignment.end),
              SizedBox(
                height: 20,
              ),
              Options(options),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "رنجات المنيوم 18 انش اسود وكروم-ديكور خشب + كروم- مقعد السائق كهربائى-دواسات جانبيه- تحكم بالمقعد مع تعديل يدوى- F1 - نظام المرتفعات-سايد بريك كهربائى-مراه داخليك اوتو -USB - Traction off- شاحن كهربائى - 7 مقاعد خلفى والوسطى قابل للانزلاق - جناح خلفى - عواكس خلفيه- سيرفس منتظم بالوكاله",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Color.fromRGBO(55, 59, 85, 1.0),
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CircleFrame([
                Text("كل السيارات"),
                Text("يوكن للسيارات المعتمده"),
                RoundContainer(
                    borderWidth: 4,
                    borderColor: Colors.white,
                    child: Image.asset(
                      "images/istockphoto-1045886560-612x612.jpg",
                      fit: BoxFit.cover,
                    ),
                    radius: 45)
              ], Color.fromRGBO(237, 241, 243, 1.0), bigframe, 20,
                  MainAxisAlignment.spaceBetween),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: CarDetails(
                      mainCard: false,
                      image: "images/2020-jaguar-f-type-480.jpg",
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: CarDetails(
                      mainCard: false,
                      image: "images/1551350837.jpg",
                    ),
                  ))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleFrame([
                      Text("احجز السياره"),
                      Icon(
                        Icons.book_outlined,
                        size: 28,
                      ),
                    ], Colors.white, MediaQuery.of(context).size.width * .35,
                        20, MainAxisAlignment.center, 5, Colors.black54),
                    CircleFrame([
                      Text(
                        " موقع السياره",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                    ],
                        Color.fromRGBO(80, 83, 108, 1.0),
                        MediaQuery.of(context).size.width * .35,
                        20,
                        MainAxisAlignment.center,
                        5),
                    CircleAvatar(
                      backgroundColor:
                          Color.fromRGBO(28, 93, 253, 0.107843137254902),
                      child: Icon(
                        Icons.messenger_rounded,
                        color: Colors.blue,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor:
                          Color.fromRGBO(1, 215, 55, 0.1823529411764706),
                      child: Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
