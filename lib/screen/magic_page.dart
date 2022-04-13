import 'package:flutter/material.dart';
import 'package:magic_8_ball/data/constant.dart';
import 'package:magic_8_ball/data/magic_data.dart';

class MagicPage extends StatefulWidget {
  const MagicPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  final MagicData magicData = MagicData();

  void answer() {
    setState(() {
      magicData.getNum();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3D95F9),
      appBar: AppBar(
        backgroundColor: const Color(0xff2A4FA6),
        title: Text(
          widget.title,
          style: kTitleStyle,
        ),
      ),
      body: Center(
          child: GestureDetector(
              onTap: answer, child: Image.asset(magicData.imageSrc))),
    );
  }
}
