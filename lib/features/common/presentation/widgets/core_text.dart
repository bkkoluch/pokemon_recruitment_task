import 'package:flutter/material.dart';
import 'package:pokemon_recruitment_task/style/style_tokens.dart';

class CoreText extends StatelessWidget {
  final String text;
  final double fontSize;

  const CoreText._({
    required this.text,
    required this.fontSize,
    Key? key,
  }) : super(key: key);

  factory CoreText.header({required String text}) {
    return CoreText._(text: text, fontSize: 32);
  }

  factory CoreText.paragraph({required String text}) {
    return CoreText._(text: text, fontSize: 20);
  }

  factory CoreText.subtitle({required String text}) {
    return CoreText._(text: text, fontSize: 14);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: StyleTokens.mainWhite, fontSize: fontSize),
    );
  }
}
