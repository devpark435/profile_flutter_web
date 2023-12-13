import 'package:flutter/material.dart';
import 'package:profile_flutter_web/widget/typografie.dart';

class IntroducScreen extends StatelessWidget {
  const IntroducScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final introducController = PageController();
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: PageView(
        controller: introducController,
        scrollDirection: Axis.horizontal,
        children: [
          firstPage(),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}

Widget firstPage() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      border: Border.all(color: Colors.blue.shade200, width: 2),
    ),
  );
}
