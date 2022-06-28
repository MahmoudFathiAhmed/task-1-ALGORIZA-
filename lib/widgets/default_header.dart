import 'package:flutter/material.dart';
import 'package:task_one_algoriza/resources/color_manager.dart';
import 'package:task_one_algoriza/widgets/default_text.dart';

class DefaultHeader extends StatelessWidget {
  final String title;
  const DefaultHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultText(
            text: title,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
            fontSize: 28,
            textAlign: TextAlign.center),
        Row(
          children: [
            DefaultText(text: 'Help',
                fontWeight: FontWeight.w500,
                color: AppColors.blue,
                fontSize: 18,
                textAlign: TextAlign.center),
            const SizedBox(width: 10,),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(shape: BoxShape.circle,
                  color: AppColors.blue),
              child: Icon(Icons
                  .question_mark,
                color: AppColors.white,
                size: 17,),
            ),
          ],
        )
      ],
    );
  }
}
