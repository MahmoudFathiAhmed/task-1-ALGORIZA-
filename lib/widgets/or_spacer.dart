import 'package:flutter/material.dart';
import 'package:task_one_algoriza/resources/color_manager.dart';
import 'package:task_one_algoriza/widgets/default_text.dart';

class OrSpacer extends StatelessWidget {
  const OrSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          height: 1,
          width: MediaQuery.of(context).size.width * .34,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: DefaultText(
              text: 'Or',
              fontWeight: FontWeight.w400,
              color: AppColors.grey,
              fontSize: 18,
              textAlign: TextAlign.center),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          height: 1,
          width: MediaQuery.of(context).size.width * .35,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }
}
