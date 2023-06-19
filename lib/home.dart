import 'package:flutter/material.dart';
import 'package:profile_flutter_web/screens/introduce.dart';
import 'package:profile_flutter_web/screens/profile.dart';
import 'package:profile_flutter_web/screens/doing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: PageView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: [
        ProfileScreen(),
        IntroducScreen(),
        DoingScreen(),
      ],
    ));
  }
}
