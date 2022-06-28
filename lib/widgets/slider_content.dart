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
          flex: 4,
          child: Image.asset(
            image,
            // height:  MediaQuery.of(context).size.height * 0.55,//320
            width: 320,),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              DefaultText(
                text: title,
                color: AppColors.black,
                fontSize: 26,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10,),
              DefaultText(
                text: subtitle,
                color: AppColors.darkGrey,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
