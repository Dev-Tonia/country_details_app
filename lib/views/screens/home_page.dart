import 'package:country_details/views/screens/detailed_page.dart';
import 'package:country_details/views/widgets/custom_appbar.dart';
import 'package:country_details/views/widgets/lang_model_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/country_model.dart';
import '../../utils/app_colors.dart';
import '../view_model/data_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    List<CountryModel> countries;

    final _data = ref.watch(countryDataProvider);

    return SafeArea(
      child: Scaffold(
        appBar: CustomBar(textTheme: textTheme, theme: theme),
        body: _data.when(
            data: (_data) {
              countries = _data.map((e) => e).toList();
              return ListView.builder(
                itemCount: countries.length,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailedPage(detailData: countries[index]),
                          ),
                        );
                      },
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 0.0),
                        visualDensity: const VisualDensity(vertical: -4),
                        leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                  countries[index].flags!.png.toString()),
                            )),
                        title: Text(
                          countries[index].name!.common.toString(),
                          style: textTheme.subtitle1,
                        ),
                        subtitle: Text(
                          countries[index].capital!.isEmpty
                              ? ''
                              : countries[index].capital![0].toString(),
                          style: textTheme.subtitle2,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            error: (err, s) => Text(err.toString()),
            loading: () => const Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
