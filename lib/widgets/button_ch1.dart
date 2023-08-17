import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    Key? key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 22, fontWeight: FontWeight.w400),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
