import 'package:flutter/material.dart';
import 'package:nazvaniepotom/Onboard/OnboardWidgets/Widgets/OnboardNextButton.dart';
import 'package:nazvaniepotom/env/env.dart';

class OnboardingMain extends StatelessWidget {
  const OnboardingMain({Key? key, required this.pageController})
      : super(key: key);
  final PageController pageController;

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
                "Добро пожаловать!",
                textAlign: TextAlign.center,
                style: onboardTitleTextStyle,
              ),
              SizedBox(height: defaultSpacing),
              Container(
                width: _screenSize.width * 0.533,
                height: _screenSize.height * 0.246,
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                ),
              ),
              SizedBox(height: defaultSpacing),
              SizedBox(
                height: _screenSize.height / 10,
                child: Text(
                  "Мы - приложение, позволяющее получить академическую помощь в кратчайшие сроки",
                  textAlign: TextAlign.center,
                  style: onboardSubtitleTextStyle,
                ),
              ),
              SizedBox(height: defaultSpacing),
              SizedBox(
                width: _screenSize.width * 0.4,
                height: _screenSize.height * 0.061,
                child: NextButton(
                  pageController: pageController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
