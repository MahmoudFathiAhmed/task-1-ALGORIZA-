import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
  final VoidCallback onClick;
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  const DefaultTextButton({Key? key, required this.onClick, required this.text, required this.color, required this.fontSize, required this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onClick,
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
    );
  }
}
