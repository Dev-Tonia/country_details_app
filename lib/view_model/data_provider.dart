import 'package:riverpod/riverpod.dart';
import '../data/models/country_model.dart';
import '../data/service/network_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countryDataProvider = FutureProvider<List<CountryModel>>((ref) async {
  return ref.watch(countryProvider).serviceData();
});
