import 'package:flutter/material.dart';
import 'package:nazvaniepotom/Onboard/OnboardWidgets/Widgets/OnboardNextButton.dart';
import 'package:nazvaniepotom/Onboard/OnboardWidgets/OnboardingThree.dart';
import 'package:nazvaniepotom/env/env.dart';
import 'OnboardWidgets/OnboardingMain.dart';
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

  final PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  List<Widget>? _onboardingPages;

  @override
  Widget build(BuildContext context) {
    _onboardingPages = [
      OnboardingMain(pageController: pageController),
      const OnboardingOne(
        pagesAmount: 3,
      ),
      const OnboardingTwo(),
      const OnboardingThree(),
    ];

    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: false,
      body: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (int pageIndex) {},
        physics: const ClampingScrollPhysics(),
        itemCount: _onboardingPages!.length,
        itemBuilder: (context, index) => _onboardingPages![index],
      ),
    );
  }
}
