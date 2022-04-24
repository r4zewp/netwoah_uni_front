import 'package:flutter/material.dart';
import 'package:nazvaniepotom/Onboard/OnboardWidgets/OnboardNextButton.dart';
import 'package:nazvaniepotom/Onboard/OnboardWidgets/OnboardingThree.dart';
import 'package:nazvaniepotom/env/env.dart';
import 'OnboardWidgets/OnboardReadyButton.dart';
import 'OnboardWidgets/OnboardingOne.dart';
import 'OnboardWidgets/OnboardingTwo.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  /// initializing page controller

  int _currentPage = 0;

  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: _currentPage == 0
            ? null
            : BackButton(
                color: Colors.black,
                onPressed: () {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeOut,
                  );
                },
              ),
      ),
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView(
            onPageChanged: (int pageIndex) {
              setState(() {
                _currentPage = pageIndex;
              });
            },
            controller: _pageController,
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: const [
              OnboardingOne(),
              OnboardingTwo(),
              OnboardingThree(),
            ],
          ),
          // ignore: prefer_const_constructors
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  0, 0, _screenSize.width * 0.05, _screenSize.height * 0.05),
              child: _currentPage == 2
                  ? OnboardReadyButton(
                      onClick: () {
                        Navigator.pushReplacementNamed(context, "/sign");
                      },
                    )
                  : OnboardNextButton(onClick: () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                      );
                    }),
            ),
          ),
        ],
      ),
    );
  }
}
