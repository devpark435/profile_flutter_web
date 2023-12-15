import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:profile_flutter_web/screens/introduce.dart';
import 'package:profile_flutter_web/screens/mobileDoing.dart';
import 'package:profile_flutter_web/screens/mobileIntoroduce.dart';
import 'package:profile_flutter_web/screens/profile.dart';
import 'package:profile_flutter_web/screens/doing.dart';
import 'package:profile_flutter_web/widget/typografie.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
  int _currentPage = 0;
  final List<Color> _bgColors = [
    Colors.grey.shade800,
    Colors.white,
    Colors.blue
  ];
  final List<Color> _textColors = [Colors.white, Colors.black, Colors.amber];
  List<String> _titles = ["Profile", "Introduce", "Doing"];

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Typografie()
              .displayMedium(_titles[_currentPage], _textColors[_currentPage]),
        ),
        actions: [
          TextButton(
              onPressed: () {
                log(
                  kIsWeb ? 'Running on Web' : 'Running on Mobile',
                );
              },
              child:
                  Typografie().displaySmall("text", _textColors[_currentPage])),
          TextButton(
              onPressed: () {},
              child:
                  Typografie().displaySmall("text", _textColors[_currentPage])),
          TextButton(
              onPressed: () {},
              child:
                  Typografie().displaySmall("text", _textColors[_currentPage]))
        ],
        backgroundColor: _bgColors[_currentPage],
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return PageView(
              controller: _controller,
              scrollDirection: Axis.vertical,
              children: const [
                MobileIntoroduceScreen(),
                ProfileScreen(),
                MobileDoingScreen(),
              ],
            );
          } else {
            return PageView(
              controller: _controller,
              scrollDirection: Axis.vertical,
              children: const [
                ProfileScreen(),
                IntroducScreen(),
                DoingScreen(),
              ],
            );
          }
        },
      ),
    );
  }
}
