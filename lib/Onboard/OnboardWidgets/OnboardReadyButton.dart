import 'package:flutter/material.dart';
import 'package:nazvaniepotom/env/env.dart';

class OnboardReadyButton extends StatelessWidget {
  const OnboardReadyButton({Key? key, required this.onClick}) : super(key: key);

  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: _screenSize.width * 0.4,
      height: _screenSize.height * 0.05,
      child: TextButton(
        style: TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
        ),
        child: Text(
          "Начать работу",
          style: TextStyle(
            color: Colors.black,
            fontFamily: primaryFontFamily,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        onPressed: onClick,
      ),
    );
    ;
  }
}
