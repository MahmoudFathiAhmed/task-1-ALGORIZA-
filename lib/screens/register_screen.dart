import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task_one_algoriza/resources/color_manager.dart';
import 'package:task_one_algoriza/screens/login_screen.dart';
import 'package:task_one_algoriza/widgets/default_button.dart';
import 'package:task_one_algoriza/widgets/default_header.dart';
import 'package:task_one_algoriza/widgets/default_outlined_button.dart';
import 'package:task_one_algoriza/widgets/default_text.dart';
import 'package:task_one_algoriza/widgets/default_text_button.dart';
import 'package:task_one_algoriza/widgets/default_text_form_field.dart';
import 'package:task_one_algoriza/widgets/or_spacer.dart';

import '../resources/assets_manager.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
   RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
        backgroundColor: AppColors.black.withOpacity(.8),
        mini: true,
        child:  Icon(Icons.arrow_back_ios_outlined,color: AppColors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
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
                    const DefaultHeader(title: 'Register'),
                    const SizedBox(
                      height: 20,
                    ),
                    DefaultText(
                        text: 'Email',
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGrey,
                        fontSize: 18,
                        textAlign: TextAlign.center),
                    const SizedBox(
                      height: 10,
                    ),
                    DefaultTextFormField(
                      label: 'Eg. example@email.com',
                      type: TextInputType.emailAddress,
                      controller: emailController,
                      validation: 'Email isn\'t registered',
                      suffixIcon: const SizedBox(),
                      prefixIcon: SizedBox(),
                    ),
                    const SizedBox(
                      height: 15,
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
                            fontSize: 18,
                            color: AppColors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DefaultText(
                        text: 'password',
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGrey,
                        fontSize: 18,
                        textAlign: TextAlign.center),
                    const SizedBox(
                      height: 10,
                    ),
                    DefaultTextFormField(
                      label: 'Password',
                      type: TextInputType.visiblePassword,
                      controller: passwordController,
                      validation: 'password isn\'t registered',
                      suffixIcon: const Icon(Icons.visibility_off),
                      prefixIcon: const SizedBox(),
                      isPassword: true,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    DefaultButton(
                        backgroundColor: AppColors.blue,
                        text: 'Register',
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
                          text: 'Has any account?',
                          color: AppColors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.center,
                        ),
                        DefaultTextButton(
                          onClick: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  LoginScreen()));
                          },
                          text: 'Sign in here',
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
                      child: Column(
                        children: [
                          DefaultText(
                              text: 'By registering your account, you are agree to our',
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkGrey,
                              fontSize: 13,
                              textAlign: TextAlign.center),
                          DefaultTextButton(
                            onClick: () {},
                            text: 'terms and conditions',
                            color: AppColors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
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
