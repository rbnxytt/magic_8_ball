import 'package:flutter/material.dart';

class Decision extends StatelessWidget {
  const Decision({
    Key? key,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  final String imagePath;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(onTap: onTap, child: Image.asset(imagePath)));
  }
}
