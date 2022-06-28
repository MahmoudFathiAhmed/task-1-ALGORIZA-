import 'package:flutter/material.dart';
import 'package:task_one_algoriza/resources/assets_manager.dart';
import 'package:task_one_algoriza/resources/color_manager.dart';

class DefaultOutlinedButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final Color borderColor;
  final double fontSize;
  final double borderWidth;
  final FontWeight fontWeight;
  final double width;
  final double height;
  final VoidCallback onclick;
  final double borderRadius;

  const DefaultOutlinedButton(
      {Key? key,
      required this.backgroundColor,
      required this.text,
      required this.textColor,
      required this.fontSize,
      required this.fontWeight,
      this.width = double.infinity,
      required this.height,
      required this.onclick,
      required this.borderRadius, required this.borderColor, required this.borderWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor,
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          side:  BorderSide(
            color: borderColor,
            width: borderWidth,
          )
        ),
        onPressed: onclick,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.google,height: 22,),
            const SizedBox(width: 10,),
            Text(
              text,
              style: TextStyle(
                  color: textColor, fontSize: fontSize, fontWeight: fontWeight),
            ),
          ],
        ),
      ),
    );
  }
}
