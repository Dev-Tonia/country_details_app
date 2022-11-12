import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'lang_text_tile.dart';

class LangCustomModelSheet {
  Future<dynamic> langCustomModalSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      isScrollControlled: true,
      builder: ((context) {
        return SizedBox(
          height: 600.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Language'),
                trailing: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close)),
              ),
              Expanded(
                child: ListView(
                  children: [
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'Bahasa',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'Deutsch',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'English',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'Español',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'Française',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'Deutsch',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'Italiano',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'Português',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'Bahasa',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'Pу́сский',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'Svenska',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'Español',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: '普通话',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                    LangTextTile(
                      onChange: ((x) {}),
                      title: 'بالعربية',
                      value: 'value',
                      groupValue: 'Bahasa_groupValue',
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

LangCustomModelSheet dropdown = LangCustomModelSheet();
