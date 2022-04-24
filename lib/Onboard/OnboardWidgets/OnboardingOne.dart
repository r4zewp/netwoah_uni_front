import 'package:flutter/material.dart';
import 'package:nazvaniepotom/Onboard/OnboardWidgets/OnboardNextButton.dart';
import 'package:nazvaniepotom/env/env.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;

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
                "Добро пожаловать в Помогатор!",
                textAlign: TextAlign.center,
                style: onboardTitleTextStyle,
              ),
              SizedBox(
                height: _screenSize.height * 0.05,
              ),
              Text(
                "Мы - приложение, позволяющее в кратчайшие сроки получить академическую помощь",
                style: onboardSubtitleTextStyle,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
