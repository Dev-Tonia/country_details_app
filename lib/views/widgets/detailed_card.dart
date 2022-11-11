import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 12, top: 12),
      child: child,
    );
  }
}
