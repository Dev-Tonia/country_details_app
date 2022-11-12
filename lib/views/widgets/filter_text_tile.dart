import 'package:flutter/material.dart';

class FilterTextTile extends StatelessWidget {
  const FilterTextTile({
    Key? key,
    required this.title,
    required this.value,
    required this.onChange,
  }) : super(key: key);
  final String title;
  final bool value;
  final void Function(bool?)? onChange;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(
        value: value,
        onChanged: onChange,
      ),
    );
  }
}
