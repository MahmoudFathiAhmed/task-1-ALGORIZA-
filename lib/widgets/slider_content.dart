import 'package:flutter/material.dart';
import 'package:task_one_algoriza/resources/color_manager.dart';
import 'package:task_one_algoriza/widgets/default_text.dart';

class SliderContent extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const SliderContent({Key? key, required this.image, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset(
            image,
            width: 320,),
        ),
        DefaultText(
          text: title,
          color: AppColors.black,
          fontSize: 24,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10,),
        DefaultText(
          text: subtitle,
          color: AppColors.darkGrey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
