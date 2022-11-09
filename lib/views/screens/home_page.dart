import 'package:country_details/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(slivers: []),
    );
  }
}


/*
RichText(
          text: TextSpan(
            text: 'Explore',
            style: TextStyle(
              color: AppColor.buttonColor,
              fontSize: 30,
            ),
            children: <TextSpan>[
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: AppColor.buttonColor,
                  fontSize: 80,
                ),
              )
            ],
          ),
        ),
 */