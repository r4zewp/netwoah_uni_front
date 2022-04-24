import 'package:flutter/material.dart';
import 'package:nazvaniepotom/env/env.dart';

class SubmitCodeButton extends StatelessWidget {
  const SubmitCodeButton({Key? key, required this.onClick}) : super(key: key);

  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: _screenSize.width * 0.786,
      height: _screenSize.height * 0.066,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                25.0,
              ),
            ),
          ),
          splashFactory: NoSplash.splashFactory,
          shadowColor: Colors.transparent,
          primary: Colors.black,
        ),
        onPressed: onClick,
        child: Text(
          "Отправить код",
          style: TextStyle(
            color: Colors.white,
            fontFamily: primaryFontFamily,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
