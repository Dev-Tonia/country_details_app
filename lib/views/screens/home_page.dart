import 'package:country_details/utils/theme_data.dart';
import 'package:country_details/views/screens/detailed_page.dart';
import 'package:country_details/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/country_model.dart';
import '../view_model/data_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final controller = TextEditingController();

    final country = ref.watch(countriesList.notifier).state;

    final List<CountryModel>? countries = country;
    var sortedList = countries;
    sortedList!.sort(
      (a, b) => a.name!.common.toString().compareTo(
            b.name!.common.toString(),
          ),
    );

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            controller: controller,
            ref: ref,
            textTheme: textTheme,
            theme: theme),
        body: ListView.builder(
          itemCount: sortedList.length,
          shrinkWrap: true,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailedPage(detailData: sortedList[index]),
                    ),
                  );
                },
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                  visualDensity: const VisualDensity(vertical: -4),
                  leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            sortedList[index].flags!.png.toString()),
                      )),
                  title: Text(
                    sortedList[index].name!.common.toString(),
                    style: textTheme.subtitle1,
                  ),
                  subtitle: Text(
                    sortedList[index].capital!.isEmpty
                        ? ''
                        : sortedList[index].capital![0].toString(),
                    style: textTheme.subtitle2,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
