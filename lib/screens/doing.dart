import 'package:flutter/material.dart';
import 'package:profile_flutter_web/widget/typografie.dart';

class DoingScreen extends StatelessWidget {
  const DoingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: SizedBox(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child:
                        Typografie().displayMedium("What I do?", Colors.black),
                  ),
                )),
            Expanded(flex: 10, child: ProjectGrid())
          ],
        ),
      ),
    );
  }
}

class ProjectGrid extends StatelessWidget {
  const ProjectGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
          childAspectRatio: 1 / 1, //item 의 가로 1, 세로 1.5 의 비율
          mainAxisSpacing: 10, //수평 Padding
          crossAxisSpacing: 10, //수직 Padding
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1, color: Colors.black)),
            child: Column(
              children: [Text("data")],
            ),
          );
        },
      ),
    );
  }
}
