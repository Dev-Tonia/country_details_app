import 'package:flutter/material.dart';

class LangTextTile extends StatelessWidget {
  const LangTextTile({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChange,
  }) : super(key: key);
  final String title;
  final String value;
  final String groupValue;
  final void Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Radio(
        value: value,
        groupValue: groupValue,
        onChanged: onChange,
      ),
    );
  }
}
