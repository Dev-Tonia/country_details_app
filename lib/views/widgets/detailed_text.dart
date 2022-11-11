import 'package:flutter/material.dart';

class DetailedText extends StatelessWidget {
  const DetailedText({
    Key? key,
    required this.textTheme,
    required this.leadingText,
    required this.subText,
  }) : super(key: key);

  final TextTheme textTheme;
  final String leadingText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: leadingText,
        style: textTheme.subtitle1!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        children: <TextSpan>[
          TextSpan(
            text: subText,
            style: textTheme.subtitle2!.copyWith(fontSize: 16),
          )
        ],
      ),
    );
  }
}
