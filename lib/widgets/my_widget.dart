import 'package:flutter/cupertino.dart';
import 'package:my_project/styles/text_style.dart';

class Widgets {
  static Widget myText(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Styles.myTextStyle,
    );
  }
}