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
          leading: const Icon(Icons.arrow_back),
          title: Text(
            'Country Name',
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
                  child: Image.network('src'),
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
                            leadingText: 'Population:',
                            subText: '  77,354',
                          ),
                        ],
                      ),
                    )
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
