import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/country_model.dart';

class NetworkHelper {
  Future<List<CountryModel>> serviceData() async {
    final response = await http.get(
      Uri.parse('https://restcountries.com/v3.1/all'),
    );

    if (response.statusCode == 200) {
      final List responseData = jsonDecode(response.body);

      var data = responseData.map((e) => CountryModel.fromJson(e)).toList();
      print(data);
      return data;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
