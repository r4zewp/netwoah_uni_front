import 'package:flutter/material.dart';
import 'package:nazvaniepotom/Sign/Telegram/TelegramWidgets/SubmitCode.dart';
import 'package:nazvaniepotom/env/env.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SubmitTelegram extends StatefulWidget {
  const SubmitTelegram({Key? key}) : super(key: key);

  @override
  State<SubmitTelegram> createState() => _SubmitTelegramState();
}

class _SubmitTelegramState extends State<SubmitTelegram> {
  /// code input field controller & formatter

  final TextEditingController _codeController = TextEditingController();
  final MaskTextInputFormatter _codeFormatter = MaskTextInputFormatter(
    mask: "###-###",
    type: MaskAutoCompletionType.lazy,
    filter: {"#": RegExp(r'[0-9]')},
  );

  ///
  ///
  /// submit function on button
  bool _isError = false;

  String? get _errorText {
    if (_codeController.text.length < 7) {
      return "Количество символов в коде должно быть 6";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    @override
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
      ),
      body: Center(
        child: SizedBox(
          width: _screenSize.width * 0.786,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "Введите код из приложения Telegram",
                  style: onboardTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 10,
                child: TextField(
                  textAlign: TextAlign.start,
                  controller: _codeController,
                  inputFormatters: [
                    _codeFormatter,
                  ],
                  onEditingComplete: () {
                    if (_codeController.text.length < 7) {
                      setState(() {
                        _isError = true;
                      });
                    } else {
                      setState(() {
                        _isError = false;
                      });
                    }
                  },
                  enableSuggestions: false,
                  showCursor: false,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontFamily: primaryFontFamily,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    isDense: true,
                    fillColor: const Color(0xffE7E7E7),
                    enabledBorder: telegramCodeSubmitBorder,
                    focusedBorder: telegramCodeSubmitBorder,
                    focusedErrorBorder: telegramCodeSubmitBorder,
                    border: telegramCodeSubmitBorder,
                    hintText: "000-000",
                    errorText: _isError
                        ? "Код должен состоять не менее чем из 6 символов"
                        : null,
                    errorMaxLines: 2,
                    errorStyle: TextStyle(
                      fontFamily: primaryFontFamily,
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    hintMaxLines: 1,
                    hintStyle: TextStyle(
                      color: const Color(0xff4d4d4d),
                      fontWeight: FontWeight.w800,
                      fontFamily: primaryFontFamily,
                      fontSize: 18,
                    ),
                    hintTextDirection: TextDirection.ltr,
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 3,
                child: SubmitCodeButton(
                  onClick: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
