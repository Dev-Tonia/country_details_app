import 'package:country_details/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/country_model.dart';
import '../../view_model/data_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final _data = ref.watch(countryDataProvider);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar.customAppBar(textTheme, theme),
        body: _data.when(
            data: (_data) {
              List<CountryModel> countryList = _data.map((e) => e).toList();
              return ListView.builder(
                itemCount: countryList.length,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  return ListTile(
                    leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              countryList[index].flags!.png.toString()),
                        )),
                    title: Text(
                      countryList[index].name!.common.toString(),
                      style: textTheme.subtitle1,
                    ),
                    subtitle: Text(
                      countryList[index].capital!.isEmpty
                          ? ''
                          : countryList[index].capital![0].toString(),
                      style: textTheme.subtitle2,
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
