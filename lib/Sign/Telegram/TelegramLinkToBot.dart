import 'package:flutter/material.dart';
import 'package:nazvaniepotom/Sign/Telegram/TelegramWidgets/GoToBotButton.dart';
import 'package:nazvaniepotom/classes/User.dart';
import 'package:nazvaniepotom/env/env.dart';

class TelegramBotLink extends StatefulWidget {
  const TelegramBotLink({Key? key}) : super(key: key);

  @override
  State<TelegramBotLink> createState() => _TelegramBotLinkState();
}

class _TelegramBotLinkState extends State<TelegramBotLink> {
  @override
  Widget build(BuildContext context) {
    /// creating user instance
    User newUser = User(null, null, null);

    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SizedBox(
          width: _screenSize.width * 0.786,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Создайте новый аккаунт",
                style: onboardTitleTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: _screenSize.height * 0.060,
              ),
              Text(
                "По кнопке ниже перейдите на бота и отправьте ему свой номер телефона, вам придет код",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xff4D4D4D),
                  fontFamily: primaryFontFamily,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: _screenSize.height * 0.060,
              ),
              GoToBotButton(onClick: () {
                Navigator.pushNamed(context, "/submitTelegramCode",
                    arguments: newUser);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
