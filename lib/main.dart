import 'package:flutter/material.dart';
import 'package:magic_8_ball/data/constant.dart';
import 'package:magic_8_ball/screen/magic_page.dart';

void main() {
  runApp(const MagicBallApp());
}

class MagicBallApp extends StatelessWidget {
  const MagicBallApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MagicPage(
        title: kTitle,
      ),
    );
  }
}
