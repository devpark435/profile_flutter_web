import 'dart:js_util';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:profile_flutter_web/widget/typografie.dart';

class MobileIntoroduceScreen extends StatelessWidget {
  const MobileIntoroduceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final introducController = PageController();
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: PageView(
          controller: introducController,
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Typografie().mobileLarge("SKILLS", Colors.black),
                    )),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromRGBO(128, 128, 128, 1.0),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.only(left: 15),
                            alignment: Alignment.centerLeft,
                            child: Typografie()
                                .mobileMedium("Front-end", Colors.white),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: skillIcon(
                                      "assets/images/flutter.png", "Flutter"),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: skillIcon(
                                      "assets/images/swift.jpeg", "Swift"),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: skillIcon(
                                      "assets/images/uikit.png", "UIkit"),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: skillIcon(
                                      "assets/images/react.png", "Java"),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.topCenter,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.topCenter,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.topCenter,
                  ),
                )
              ],
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.pink,
            )
          ],
        ),
      ),
    ));
  }
}

Widget skillIcon(String imageUrl, String text) {
  return Column(
    children: [
      Expanded(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.transparent, BlendMode.dstIn),
              ),
            ),
          )),
      Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: Text(text),
          ))
    ],
  );
}
