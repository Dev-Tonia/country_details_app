import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/country_model.dart';

class NetworkHelper {
  // String endpoint = "https://restcountries.com/v3.1/all";

  Future<List<CountryModel>> serviceData() async {
    Response response =
        await get(Uri.parse("https://restcountries.com/v3.1/all"));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => CountryModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

// final countryProvider = Provider<APIService>((ref) => APIService());

// class NetworkHelper {
//   Future<List<CountryModel>> serviceData() async {
//     var response =
//         await http.get(Uri.parse("https://restcountries.com/v3.1/all"));
//     if (response.statusCode == 200) {
//       final result = jsonDecode(response.body);
//       List<CountryModel> _list = List<CountryModel>.from(
//           result..map((e) => CountryModel.fromJson(Map.from(e))));
//       return _list;
//     } else {
//       throw Exception(response.reasonPhrase);
//     }
//   }
// }

final countryProvider = Provider<NetworkHelper>((ref) => NetworkHelper());

// class HttpService {
//   final String postsURL = "https://jsonplaceholder.typicode.com/posts";

//   Future<List<CountryModel>> getPosts() async {
//     Response res = await get(Uri.parse(postsURL));

//     if (res.statusCode == 200) {
//       List<dynamic> body = jsonDecode(res.body);

//       List<CountryModel> posts = body
//           .map(
//             (dynamic item) => CountryModel.fromJson(item),
//           )
//           .toList();

//       return posts;
//     } else {
//       throw "Unable to retrieve posts.";
//     }
//   }
// }

// // any where you are seeing User put CountryModel