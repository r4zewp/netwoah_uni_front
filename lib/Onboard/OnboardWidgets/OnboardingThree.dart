import 'package:flutter/material.dart';
import '../../env/env.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({Key? key}) : super(key: key);

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
              Text("Решай безопасно", style: onboardTitleTextStyle),
              SizedBox(
                height: _screenSize.height * 0.05,
              ),
              Text(
                "Мы за безопасные решения, поэтому ты можешь не беспокоиться за оплату своего решения",
                style: onboardSubtitleTextStyle,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
