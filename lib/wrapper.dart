import 'package:flutter/material.dart';
import 'package:nazvaniepotom/Main/MainPage.dart';
import 'package:nazvaniepotom/Sign/Sign.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override

  /// TODO: implement DB logic to USER
  bool _isUser = false;

  Widget build(BuildContext context) {
    if (_isUser) {
      return const MainPage();
    } else {
      return Sign();
    }
  }
}
