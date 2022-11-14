import 'package:carousel_slider/carousel_slider.dart';
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
        body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                height: 200.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                detailData.flags!.png.toString(),
                detailData.coatOfArms!.png.toString(),
                detailData.maps!.googleMaps.toString()
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          i,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            // Container(
            //     width: MediaQuery.of(context).size.width,
            //     margin: EdgeInsets.symmetric(horizontal: 5.0),
            //     decoration: BoxDecoration(color: Colors.amber),
            //     child: Text(
            //       'text $i',
            //       style: TextStyle(fontSize: 16.0),
            //     )),
            // Container(
            //   height: 200,
            //   width: double.infinity,
            //   decoration:
            //       BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(8.0),
            //     child: Image.network(
            //       detailData.flags!.png.toString(),
            //     ),
            //   ),
            // ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
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
            ),
          ],
        ),
      ),
    );
  }
}
