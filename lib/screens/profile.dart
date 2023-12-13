import 'package:flutter/material.dart';
import 'package:profile_flutter_web/widget/typografie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: const Color.fromARGB(255, 39, 55, 77),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Typografie().displayLarge("박현렬",
                                const Color.fromARGB(255, 221, 230, 237)),
                            Typografie().displayMedium("Profile",
                                const Color.fromARGB(255, 221, 230, 237)),
                            Typografie().displaySmall(
                                "Flutter Developer, Ios Developer",
                                const Color.fromARGB(255, 221, 230, 237)),
                            Typografie().displayMedium(
                                "-", const Color.fromARGB(255, 221, 230, 237)),
                            Typografie().displaySmall(
                                "Flutter 개발에 대한 열정과 경험을 쌓아온 개발자로,",
                                const Color.fromARGB(255, 221, 230, 237)
                                    .withOpacity(.8)),
                            Typografie().displaySmall(
                                "창의적이고 효율적인 솔루션을 찾는 것을 즐깁니다.",
                                const Color.fromARGB(255, 221, 230, 237)
                                    .withOpacity(.8)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(bottom: 50.0),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width * .8,
                            child: const InfoScreen()),
                      ))),
                ],
              ),
            ),
            Positioned(
                bottom: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Typografie().displaySmall("더 알아보기", Colors.white),
                          const Icon(
                            Icons.arrow_downward_outlined,
                            color: Colors.white,
                            size: 23,
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var _width = constraints.maxWidth;
        return _width >= 1000
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              flex: 1,
                              child: infoContainer(
                                  const Icon(Icons.person), "이름", "박현렬")),
                          Expanded(
                              flex: 1,
                              child: infoContainer(const Icon(Icons.date_range),
                                  "생년월일", "98.10.31")),
                          Expanded(
                              flex: 1,
                              child: infoContainer(
                                  const Icon(Icons.location_on),
                                  "주소지",
                                  "서울시 중랑구")),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              flex: 1,
                              child: infoContainer(const Icon(Icons.call),
                                  "연락처", "010-7687-0863")),
                          Expanded(
                              flex: 1,
                              child: infoContainer(const Icon(Icons.mail),
                                  "이메일", "devpark435@naver.com")),
                          Expanded(
                              flex: 1,
                              child: infoContainer(const Icon(Icons.school),
                                  "학력", "성공회대학교(소프트웨어공학, 컴퓨터공학)")),
                        ],
                      ),
                    )
                  ],
                ),
              )
            : ListView(
                children: [
                  infoContainer(const Icon(Icons.person), "이름", "박현렬"),
                  Divider(color: Colors.grey.shade800, thickness: 1),
                  infoContainer(
                      const Icon(Icons.date_range), "생년월일", "98.10.31"),
                  Divider(color: Colors.grey.shade800, thickness: 1),
                  infoContainer(
                      const Icon(Icons.location_on), "주소지", "서울시 중랑구"),
                  Divider(color: Colors.grey.shade800, thickness: 1),
                  infoContainer(const Icon(Icons.call), "연락처", "010-7687-0863"),
                  Divider(color: Colors.grey.shade800, thickness: 1),
                  infoContainer(
                      const Icon(Icons.mail), "이메일", "devpark435@naver.com"),
                  Divider(color: Colors.grey.shade800, thickness: 1),
                  infoContainer(
                      const Icon(Icons.school), "학력", "성공회대학교(소프트웨어공학, 컴퓨터공학)"),
                ],
              );
      },
    );
  }
}

Widget infoContainer(icon, String text1, String text2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: FittedBox(fit: BoxFit.cover, child: icon)),
          flex: 1,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Typografie().displayMedium(text1, Colors.grey.shade800),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Typografie().displaySmall(text2, Colors.grey.shade800),
              ),
            ],
          ),
          flex: 2,
        )
      ],
    ),
  );
}
