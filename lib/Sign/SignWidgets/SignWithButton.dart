import 'package:flutter/material.dart';
import 'package:nazvaniepotom/env/env.dart';

class SignTelegramButton extends StatelessWidget {
  const SignTelegramButton({Key? key, required this.onClick}) : super(key: key);

  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: _screenSize.width * 0.712,
      height: _screenSize.height * 0.061,
      child: OutlinedButton(
        onPressed: onClick,
        child: Text(
          "Войти через Telegram",
          style: TextStyle(
            color: Colors.black,
            fontFamily: primaryFontFamily,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: OutlinedButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0.0,
          side: const BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
      ),
    );
  }
}
