import 'package:flutter/material.dart';
import 'package:nazvaniepotom/env/env.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key, required this.pageController}) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      },
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              100.0,
            ),
          ),
        ),
        shadowColor: Colors.transparent,
        elevation: 0.0,
        primary: Colors.black,
        splashFactory: NoSplash.splashFactory,
      ),
      child: Text(
        "Далее",
        style: TextStyle(
          color: Colors.white,
          fontFamily: primaryFontFamily,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }
}
