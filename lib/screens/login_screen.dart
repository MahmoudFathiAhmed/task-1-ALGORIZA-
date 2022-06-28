import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task_one_algoriza/resources/assets_manager.dart';
import 'package:task_one_algoriza/resources/color_manager.dart';
import 'package:task_one_algoriza/screens/register_screen.dart';
import 'package:task_one_algoriza/widgets/default_button.dart';
import 'package:task_one_algoriza/widgets/default_header.dart';
import 'package:task_one_algoriza/widgets/default_outlined_button.dart';

// import 'package:task_one_algoriza/screens/onboarding_screen.dart';
import 'package:task_one_algoriza/widgets/default_text.dart';
import 'package:task_one_algoriza/widgets/default_text_button.dart';
import 'package:task_one_algoriza/widgets/default_text_form_field.dart';
import 'package:task_one_algoriza/widgets/or_spacer.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.register,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                        text: 'Welcome to fashion daily',
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey,
                        fontSize: 12,
                        textAlign: TextAlign.center),
                    const SizedBox(
                      height: 20,
                    ),
                    const DefaultHeader(title: 'Sign in'),
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultText(
                        text: 'Phone Number',
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGrey,
                        fontSize: 18,
                        textAlign: TextAlign.center),
                    const SizedBox(
                      height: 10,
                    ),
                    DefaultTextFormField(
                      label: 'Eg. 812345678',
                      type: TextInputType.phone,
                      controller: phoneController,
                      validation: 'Phone number isn\'t registered',
                      suffixIcon: const SizedBox(),
                      prefixIcon: CountryCodePicker(
                        initialSelection: 'EG',
                        favorite: const ['+966', 'SA'],
                        showFlag: false,
                        padding: const EdgeInsets.all(0),
                        showDropDownButton: true,
                        textStyle: TextStyle(
                            fontSize: 19,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultButton(
                        backgroundColor: AppColors.blue,
                        text: 'Sign in',
                        textColor: AppColors.white,
                        onclick: () {
                          if(formKey.currentState!.validate()){

                          }
                        },
                        borderRadius: 4,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 50),
                    const OrSpacer(),
                    DefaultOutlinedButton(
                      backgroundColor: Colors.white,
                      text: 'Sign With by Google',
                      textColor: AppColors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      height: 60,
                      onclick: () {},
                      borderRadius: 4,
                      borderWidth: 2,
                      borderColor: AppColors.blue,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DefaultText(
                          text: 'Don\'t have an account?',
                          color: AppColors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.center,
                        ),
                        DefaultTextButton(
                          onClick: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  RegisterScreen()));
                          },
                          text: 'Register here',
                          color: AppColors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: DefaultText(
                          text: 'Use the application according to the policy rules. Any\n\nkinds of violationswill be subject to sanctions',
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkGrey,
                          fontSize: 13,
                          textAlign: TextAlign.center),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
