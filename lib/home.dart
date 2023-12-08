import 'package:flutter/material.dart';
import 'package:profile_flutter_web/screens/introduce.dart';
import 'package:profile_flutter_web/screens/profile.dart';
import 'package:profile_flutter_web/screens/doing.dart';
import 'package:profile_flutter_web/widget/typografie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Typografie().displayMedium("Profile", Colors.white),
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Typografie().displaySmall("text", Colors.white)),
            TextButton(
                onPressed: () {},
                child: Typografie().displaySmall("text", Colors.white)),
            TextButton(
                onPressed: () {},
                child: Typografie().displaySmall("text", Colors.white))
          ],
          backgroundColor: Colors.grey.shade800,
          elevation: 0,
        ),
        body: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: const [
            ProfileScreen(),
            IntroducScreen(),
            DoingScreen(),
          ],
        ));
  }
}
