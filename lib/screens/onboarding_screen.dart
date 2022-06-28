import 'package:flutter/material.dart';
import 'package:task_one_algoriza/resources/assets_manager.dart';
import 'package:task_one_algoriza/resources/color_manager.dart';
import 'package:task_one_algoriza/screens/login_screen.dart';
import 'package:task_one_algoriza/screens/register_screen.dart';
import 'package:task_one_algoriza/widgets/default_button.dart';
import 'package:task_one_algoriza/widgets/default_text.dart';
import 'package:task_one_algoriza/widgets/default_text_button.dart';
import 'package:task_one_algoriza/widgets/slider_content.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 6.0,
      width: 18.0,
      decoration: BoxDecoration(
        color: isActive ? AppColors.kashmir : AppColors.lightGrey,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //skip
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    DefaultButton(
                      backgroundColor: AppColors.offWhite,
                      borderRadius: 25,
                      text: 'Skip',
                      onclick: () {},
                      textColor: AppColors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: 80,
                    ),
                  ],
                ),
              ),
              //logo
              Expanded(
                flex: 2,
                  child: Image.asset(AppImages.appLogo, width: 120,)),
              //page view
              Expanded(
                flex: 10,
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: const [
                    SliderContent(
                      image: AppImages.onBoarding1,
                      title: 'Get Food Delivery to your\ndoorstep asap',
                      subtitle: 'We have young and professional delivery \nteam that will bring your food as soon as\npossible to your doorstep',
                    ),
                    SliderContent(
                      image: AppImages.onBoarding2,
                      title: 'Buy any food from your\nfavourite restaurant',
                      subtitle: 'We are constantly adding your favourite \nrestaurant throughout the territory and around\nyour area carefully selected',
                    ),
                    SliderContent(
                      image: AppImages.onBoarding3,
                      title: 'Get Food Delivery to your\ndoorstep asap',
                      subtitle: 'We have young and professional delivery \nteam that will bring your food as soon as\npossible to your doorstep',
                    ),
                  ],
                ),
              ),
              //indicator
              Expanded(
                flex:1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
              // SizedBox(height: MediaQuery.of(context).size.height * 0.00000000001,),
              //get started
              Expanded(
                flex:1,
                child: DefaultButton(
                    backgroundColor: AppColors.paleGreen,
                    text: 'Get Started',
                    textColor: AppColors.white,
                    fontSize: 18,
                    onclick: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginScreen()));
                    },
                    borderRadius: 10,
                  height: MediaQuery.of(context).size.height * 0.05,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //sign up
              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultText(
                        text: 'Don\'t have an account?',
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      DefaultTextButton(
                          onClick: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegisterScreen()));
                          },
                          text: 'Sign Up',
                          color: AppColors.paleGreen,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
