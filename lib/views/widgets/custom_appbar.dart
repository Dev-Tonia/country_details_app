import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CustomAppbar {
  static PreferredSize customAppBar(TextTheme textTheme, ThemeData theme) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(200),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
        ),
        child: Column(
          children: [
            AppBar(
              toolbarHeight: 71,
              title: RichText(
                text: TextSpan(
                  text: 'Explore',
                  style: textTheme.caption!.copyWith(
                      // using this copy function, you can modify your text style from your theme class
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: const Color(0xff001637)),
                  children: <TextSpan>[
                    TextSpan(
                      text: '.',
                      style: textTheme.caption!.copyWith(
                        // using this copy function, you can modify your text style from your theme class
                        fontWeight: FontWeight.w900,
                        color: AppColor.buttonColor,
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
              ),
              actions: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.wb_sunny_outlined),
                  ),
                )
              ],
            ),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Country',
                hintStyle: textTheme.headline6,
                filled: true,
                fillColor: theme.focusColor,
                focusColor: theme.focusColor,
                border: InputBorder.none,
              ),
              // validation done in the helper class, you can do more validation there and pass the value on the UI
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.language,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'EN',
                        style: textTheme.bodyText1!.copyWith(fontSize: 12),
                      )
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.filter_alt_outlined,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Filter',
                        style: textTheme.bodyText1!.copyWith(fontSize: 12),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
