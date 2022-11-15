import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../models/country_model.dart';

class NetworkHelper {
  // String endpoint = "https://restcountries.com/v3.1/all";

  Future<List<CountryModel>> serviceData() async {
    http.Response response =
        await http.get(Uri.parse("https://restcountries.com/v3.1/all"));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => CountryModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final countryProvider = Provider<NetworkHelper>((ref) => NetworkHelper());



// class NetworkHelper {
//   // String endpoint = "https://restcountries.com/v3.1/all";

//   Future<List<CountryModel>> serviceData() async {
//     Response response =
//         await get(Uri.parse("https://restcountries.com/v3.1/all"));
//     if (response.statusCode == 200) {
//       final List result = jsonDecode(response.body);
//       return result.map((e) => CountryModel.fromJson(e)).toList();
//     } else {
//       throw Exception(response.reasonPhrase);
//     }
//   }
// }
