import 'package:flutter/material.dart';
import '../../env/env.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({Key? key}) : super(key: key);

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
              Text("Решай быстро", style: onboardTitleTextStyle),
              SizedBox(
                height: _screenSize.height * 0.05,
              ),
              Text(
                "Благодаря большой базе репетиторов ты можешь начать подготовку к контрольной за кратчайшие сроки",
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
