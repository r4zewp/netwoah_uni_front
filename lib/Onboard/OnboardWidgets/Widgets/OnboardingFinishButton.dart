import 'package:flutter/material.dart';

class OnboardingFinishButton extends StatelessWidget {
  const OnboardingFinishButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/sign');
      },
      child: const Image(
        width: 27,
        height: 23,
        image: AssetImage('assets/icons/arrow_right.png'),
      ),
    );
  }
}
