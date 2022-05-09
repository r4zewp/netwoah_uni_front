import 'package:flutter/material.dart';
import 'package:nazvaniepotom/Onboard/OnboardWidgets/Widgets/HorizontalProgressBarDottedItem.dart';
import 'package:nazvaniepotom/env/env.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({Key? key, required this.pagesAmount}) : super(key: key);

  final int pagesAmount;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double defaultSpacing = _screenSize.height * 0.078;
    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SizedBox(
          width: _screenSize.width * 0.856,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Решай быстро",
                textAlign: TextAlign.center,
                style: onboardTitleTextStyle,
              ),
              SizedBox(height: defaultSpacing),
              Container(
                width: _screenSize.width * 0.533,
                height: _screenSize.height * 0.246,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/onboard_one.png"),
                  ),
                ),
              ),
              SizedBox(height: defaultSpacing),
              SizedBox(
                height: _screenSize.height / 10,
                child: Text(
                  "Благодаря большой базе репетиторов ты сможешь начать подготовку в кратчайшие сроки",
                  textAlign: TextAlign.center,
                  style: onboardSubtitleTextStyle,
                ),
              ),
              SizedBox(height: defaultSpacing),
              SizedBox(
                width: _screenSize.width * 0.149,
                height: _screenSize.height * 0.061,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HorizontalProgressBarDottedItem(
                      isActive: true,
                    ),
                    HorizontalProgressBarDottedItem(
                      isActive: false,
                    ),
                    HorizontalProgressBarDottedItem(
                      isActive: false,
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
