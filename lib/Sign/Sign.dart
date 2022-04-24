import 'package:flutter/material.dart';
import 'package:nazvaniepotom/Sign/SignWidgets/SignWithButton.dart';
import 'package:nazvaniepotom/env/env.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SizedBox(
          width: _screenSize.width * 0.712,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Помогатор",
                style: onboardTitleTextStyle,
              ),
              SizedBox(
                height: _screenSize.height * 0.137,
              ),
              const Image(
                image: AssetImage("assets/img/logo.png"),
              ),
              SizedBox(
                height: _screenSize.height * 0.137,
              ),
              SignTelegramButton(onClick: () {
                Navigator.pushNamed(context, '/telegramlink');
              })
            ],
          ),
        ),
      ),
    );
  }
}
