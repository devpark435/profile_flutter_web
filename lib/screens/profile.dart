import 'package:flutter/material.dart';
import 'package:profile_flutter_web/widget/typografie.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: const [
                  Expanded(flex: 1, child: ProfileText()),
                  Expanded(flex: 1, child: ProfileImage())
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Typografie().displaySmall("아래로 스크롤 하세요!", Colors.white),
                    const Icon(
                      Icons.arrow_downward_outlined,
                      color: Colors.white,
                      size: 23,
                    )
                  ],
                )))
          ],
        ));
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(image: DecorationImage(image: NetworkImage(""))),
    );
  }
}

class ProfileText extends StatelessWidget {
  const ProfileText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: 40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Typografie().displayLarge("Hi ~~~~~", Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Typografie().displayMedium("~~~~~", Colors.white),
          )
        ]));
  }
}
