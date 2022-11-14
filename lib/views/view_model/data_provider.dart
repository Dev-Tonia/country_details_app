import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import '../../data/models/country_model.dart';
import '../../data/service/network_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/lang_model_sheet.dart';

final countryProvider = Provider<NetworkHelper>((ref) => NetworkHelper());
final modelSheetProvider =
    Provider<LangCustomModelSheet>((ref) => LangCustomModelSheet());

final countryDataProvider = FutureProvider<List<CountryModel>>((ref) async {
  return ref.watch(countryProvider).serviceData();
});

TextEditingController searchValue = TextEditingController();
