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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "добро пожаловать в",
                    textAlign: TextAlign.center,
                    style: onboardTitleTextStyle,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange.shade300,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        25.0,
                      ),
                    ),
                    border: Border.all(
                      color: Colors.orange.shade300,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "помогатор",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        fontFamily: primaryFontFamily,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: _screenSize.height * 0.05,
                ),
                Text(
                  "мы — приложение, позволяющее в кратчайшие сроки получить академическую помощь",
                  style: onboardSubtitleTextStyle,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.fade,
                ),
              ]),
        ),
      ),
    );
  }
}
