import 'package:country_details/data/models/country_model.dart';
import 'package:flutter/material.dart';

import '../widgets/detailed_card.dart';
import '../widgets/detailed_text.dart';

class DetailedPage extends StatelessWidget {
  const DetailedPage({super.key, required this.detailData});

  final CountryModel detailData;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
          centerTitle: true,
          title: Text(
            detailData.name!.common.toString(),
            style: textTheme.bodyText1,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(detailData.flags!.png.toString()),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    DetailCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Population:  ',
                            subText: detailData.population.toString(),
                          ),
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Region:  ',
                            subText: detailData.region.toString(),
                          ),
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Capital:  ',
                            subText: detailData.capital![0],
                          ),
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Motto:  ',
                            subText: detailData.population.toString(),
                          ),
                        ],
                      ),
                    ),
                    DetailCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Official language:  ',
                            subText: detailData.languages!.eng.toString(),
                          ),
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Ethic group:  ',
                            subText: detailData.languages!.eng.toString(),
                          ),
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Government:  ',
                            subText: detailData.population.toString(),
                          ),
                        ],
                      ),
                    ),
                    DetailCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Independence:  ',
                            subText: detailData.independent.toString(),
                          ),
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Area:  ',
                            subText: detailData.region.toString(),
                          ),
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Currency:  ',
                            subText: detailData.currencies!.bBD.toString(),
                          ),
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'GDP:  ',
                            subText: detailData.gini!.d2014 == null
                                ? ''
                                : detailData.gini!.d2014.toString(),
                          ),
                        ],
                      ),
                    ),
                    DetailCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Time zone:  ',
                            subText: detailData.timezones![0],
                          ),
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Date format:  ',
                            subText: detailData.region.toString(),
                          ),
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Dialling code:  ',
                            subText:
                                '${detailData.idd!.root} ${detailData.idd!.suffixes![0]} ',
                          ),
                          DetailedText(
                            textTheme: textTheme,
                            leadingText: 'Driving side:  ',
                            subText: detailData.car!.side.toString(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
