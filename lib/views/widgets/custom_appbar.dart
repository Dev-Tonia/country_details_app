import 'package:country_details/views/widgets/fliter_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';
import 'lang_model_sheet.dart';

class CustomBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomBar({
    Key? key,
    required this.textTheme,
    required this.theme,
  }) : super(key: key);

  final TextTheme textTheme;
  final ThemeData theme;
  @override
  Size get preferredSize => const Size.fromHeight(190);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
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
                      fontFamily: 'Pacifico',
                      fontSize: 25,
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
                  onPressed: () {
                    dropdown.langCustomModalSheet(context);
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.language,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'EN',
                        style: textTheme.bodyText1!.copyWith(fontSize: 12.sp),
                      )
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    filterDropdown.flitercustomModalSheet(context);
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.filter_alt_outlined,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Filter',
                        style: textTheme.bodyText1!.copyWith(fontSize: 12.sp),
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
