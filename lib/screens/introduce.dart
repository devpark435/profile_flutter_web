import 'package:flutter/material.dart';
import 'package:profile_flutter_web/widget/typografie.dart';

class IntroducScreen extends StatelessWidget {
  const IntroducScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final introduc_Controller = PageController();
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Typografie().displayMedium("Introduce", Colors.black),
                )),
            Expanded(
                flex: 10,
                child: Container(
                  child: PageView(
                    controller: introduc_Controller,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        color: Colors.amber,
                      ),
                      Container(
                        color: Colors.black,
                      ),
                      Container(
                        color: Colors.pink,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
