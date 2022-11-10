import 'package:country_details/data/models/country_model.dart';
import 'package:country_details/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../data/service/network_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final networkHelper = NetworkHelper();
  late Future<List<CountryModel>> service;
  @override
  void initState() {
    super.initState();
    networkHelper.serviceData();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: CustomAppbar.customAppBar(textTheme, theme),
      body: FutureBuilder(
        future: service,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    trailing: Text(
                      '..',
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    title: Text("List item $index"));
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
