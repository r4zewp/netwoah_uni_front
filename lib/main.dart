import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nazvaniepotom/Onboard/OnboardMain.dart';
import 'package:nazvaniepotom/Sign/Telegram/TelegramLinkToBot.dart';

import 'Sign/Sign.dart';
import 'Sign/Telegram/SubmitTelegram.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light,
  );
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(const Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => const Onboarding(),
        '/sign': (context) => const Sign(),
        '/telegramlink': (context) => const TelegramBotLink(),
        '/submitTelegramCode': (context) => const SubmitTelegram(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
        splashFactory: NoSplash.splashFactory,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
