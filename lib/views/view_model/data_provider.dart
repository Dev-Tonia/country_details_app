import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import '../../data/models/country_model.dart';
import '../../data/service/network_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/lang_model_sheet.dart';

// final modelSheetProvider =
//     Provider<LangCustomModelSheet>((ref) => LangCustomModelSheet());

// final countryDataProvider = FutureProvider<List<CountryModel>>((ref) async {
//   final countries = ref.watch(countryProvider)..serviceData();

//   var countriesList = countries;

//   return countriesList;
//   // return ref.watch(countryProvider).serviceData(); the initial solution.
// });

// TextEditingController controller = TextEditingController();
// final searchProvider = StateProvider<List<CountryModel>?>((ref) {
//   // We return the default sort type, here name.
//   final searchList = ref.watch(countryDataProvider).value;

//   return searchList;
// });

// final searchedCountryProvider =
//     StateProvider<List<CountryModel>?>((_) => _.watch(searchProvider));

// final searchedCountryTextProvided = StateProvider<String>((ref) => '');

// final countriesList = StateProvider<List<CountryModel>?>((ref) {
//   final searchText = ref.watch(searchedCountryTextProvided);
//   // ignore: deprecated_member_use
//   final searchedCountry = ref.watch(searchedCountryProvider.state).state;

//   List<CountryModel>? searchResult = [];

//   if (searchText.isEmpty) {
//     searchResult = searchedCountry;
//   } else {
//     searchResult = searchedCountry!
//         .where((element) => element.name!.common!
//             .toLowerCase()
//             .contains(searchText.toLowerCase()))
//         .toList();
//   }

//   return searchResult;
// });

final apiDataProvider = FutureProvider<List<CountryModel>?>((ref) async {
  final countries = ref.watch(countryProvider).serviceData();

  var countriesList = countries;

  return countriesList;
});

final searchProvider = StateProvider<List<CountryModel>?>((ref) {
  // We return the default sort type, here name.
  final searchList = ref.watch(apiDataProvider).value;

  return searchList;
});

final searchedCountryProvider =
    StateProvider<List<CountryModel>?>((_) => _.watch(searchProvider));

final searchedCountryTextProvided = StateProvider<String>((ref) => '');

final countriesList = StateProvider<List<CountryModel>?>((ref) {
  final searchText = ref.watch(searchedCountryTextProvided);
  // ignore: deprecated_member_use
  final searchedCountry = ref.watch(searchedCountryProvider.state).state;

  List<CountryModel>? searchResult = [];

  if (searchText.isEmpty) {
    searchResult = searchedCountry;
  } else {
    searchResult = searchedCountry!
        .where((element) => element.name!.common!
            .toLowerCase()
            .contains(searchText.toLowerCase()))
        .toList();
  }

  return searchResult;
});
