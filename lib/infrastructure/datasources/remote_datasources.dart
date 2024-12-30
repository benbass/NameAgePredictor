import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:name_age_predictor/domain/entities/response_entity.dart';
import 'package:name_age_predictor/infrastructure/models/response_model.dart';

abstract class RemoteDataSources {
  Future<ResponseEntity> fetchAge(String term, String? country);
}

class RemoteDataSourcesImpl extends RemoteDataSources {
  @override
  Future<ResponseEntity> fetchAge(String term, String? country) async {
    String searchTerm = term.trim().replaceAll(' ', '+');

    String url = "";
    if (country != null) {
      if (country.isEmpty) {
        url = "https://api.agify.io?name=$searchTerm";
      } else {
        url = "https://api.agify.io?name=$searchTerm&country_id=$country";
      }
    } else {
      url = "https://api.agify.io?name=$searchTerm";
    }

    try {
      final response = await http.get(
        Uri.parse(url),
      );

      // test data: workaround for api limit
      /*
      var testJsonObject = {
        "count": 108496,
        "name": "michael",
        "age": 62,
        "country_id": "US"
      };
      return ResponseModel.fromJson(testJsonObject);
      */
      // end test data

      if (response.statusCode == 200) {
        var jsonObject = json.decode(response.body);
        return ResponseModel.fromJson(jsonObject);
      } else if (response.statusCode == 429) {
        return ResponseModel.fromJson({
          "count": 0,
          "name": "Too many requests: Request limit reached.",
          "age": -1,
          "country_id": ""
        });
      } else {
        return ResponseModel.fromJson({
          "count": 0,
          "name": "Error: Failed to load the data for $term.",
          "age": -1,
          "country_id": ""
        });
      }
    } catch (_) {
      return ResponseModel.fromJson({
        "count": 0,
        "name": "Error: Check your network and try again!",
        "age": -1,
        "country_id": ""
      });
    }
  }
}
