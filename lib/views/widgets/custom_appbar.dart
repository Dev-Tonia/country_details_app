import 'package:country_details/utils/theme_data.dart';
import 'package:country_details/views/view_model/data_provider.dart';
import 'package:country_details/views/widgets/fliter_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';
import 'lang_model_sheet.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.controller,
    required this.ref,
    required this.textTheme,
    required this.theme,
  }) : super(key: key);

  final TextEditingController controller;
  final WidgetRef ref;
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
              title: SizedBox(
                height: 100,
                width: 100,
                child: Image(
                  image: Theme.of(context).imageForName('explore.jpg'),
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
              controller: controller,
              onFieldSubmitted: (value) {
                ref.read(searchedCountryTextProvided.notifier).state = value;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Country',
                hintStyle: textTheme.headline6,
                filled: true,
                fillColor: theme.focusColor,
                focusColor: theme.focusColor,
                border: InputBorder.none,
              ),
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
