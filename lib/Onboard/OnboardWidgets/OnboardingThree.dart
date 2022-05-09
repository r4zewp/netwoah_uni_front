import 'package:flutter/material.dart';
import 'package:nazvaniepotom/Onboard/OnboardWidgets/Widgets/HorizontalProgressBarDottedItem.dart';
import 'package:nazvaniepotom/Onboard/OnboardWidgets/Widgets/OnboardingFinishButton.dart';
import '../../env/env.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({Key? key}) : super(key: key);

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
                "Не забудь про анонимность",
                textAlign: TextAlign.center,
                style: onboardTitleTextStyle,
              ),
              SizedBox(height: defaultSpacing),
              Container(
                width: _screenSize.width * 0.533,
                height: _screenSize.height * 0.246,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/img/onboard_three.png"),
                  ),
                ),
              ),
              SizedBox(height: defaultSpacing),
              SizedBox(
                height: _screenSize.height / 10,
                child: Text(
                  "У нас ты можешь не беспокоиться за свои данные - все они хранятся в надежном месте",
                  textAlign: TextAlign.center,
                  style: onboardSubtitleTextStyle,
                ),
              ),
              SizedBox(height: defaultSpacing),
              SizedBox(
                width: _screenSize.width * 0.856,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: _screenSize.width * 0.149,
                      height: _screenSize.height * 0.061,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          HorizontalProgressBarDottedItem(
                            isActive: false,
                          ),
                          HorizontalProgressBarDottedItem(
                            isActive: false,
                          ),
                          HorizontalProgressBarDottedItem(
                            isActive: true,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: _screenSize.width * 0.274),
                    const OnboardingFinishButton(),
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
