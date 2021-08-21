import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  List<List<Object>>? options;
TextStyle colors=TextStyle(color: Color.fromRGBO(55, 59, 85, 1.0),fontSize: 14,fontWeight: FontWeight.bold );
  Options(this.options);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      height: 250,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          ...options!
              .map(
                (e) => Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      color: Color.fromRGBO(247, 247, 253, 1.0),

                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  e[2].runtimeType == String
                                      ? Text(
                                          e[2].toString(),
                                          style: colors,
                                          textDirection: TextDirection.rtl,

                                        )
                                      : Icon((e[2] as IconData)),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    e[1].toString(),style: colors,
                                    textDirection: TextDirection.rtl,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ImageIcon(AssetImage(e[0].toString()),size: 20,)
                                ],
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      height: 1,
                    ),
                  ],
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
