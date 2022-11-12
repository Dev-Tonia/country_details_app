import 'package:country_details/views/widgets/filter_text_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class FilterCustomModelSheet {
  Future<dynamic> flitercustomModalSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      isScrollControlled: true,
      enableDrag: true,
      builder: ((context) {
        return SizedBox(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                StickyHeader(
                  overlapHeaders: true,
                  header: ListTile(
                    title: const Text('Filter'),
                    trailing: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.close),
                    ),
                  ),
                  content: Column(
                    children: [
                      ExpansionTile(
                        title: const Text('Continent'),
                        children: [
                          FilterTextTile(
                            title: 'Africa',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'Antarctica',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'Asia',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'Australia',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'Europe',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'North America',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'South America',
                            value: false,
                            onChange: (x) {},
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: const Text('Time Zone'),
                        children: [
                          FilterTextTile(
                            title: 'GMT+1:00',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'GMT+2:00',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'GMT+3:00',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'GMT+4:00',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'GMT+5:00',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'GMT+6:00',
                            value: false,
                            onChange: (x) {},
                          ),
                          FilterTextTile(
                            title: 'GMT+7:00',
                            value: false,
                            onChange: (x) {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

FilterCustomModelSheet filterDropdown = FilterCustomModelSheet();
