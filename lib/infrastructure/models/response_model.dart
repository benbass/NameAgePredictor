import 'package:name_age_predictor/domain/entities/response_entity.dart';

class ResponseModel extends ResponseEntity {
  ResponseModel({
    required super.count,
    required super.name,
    required super.country,
    required super.age,
  });
  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      count: json['count'] ?? 0,
      name: json['name'] ?? "",
      country: json['country_id'] ?? "",
      age: json['age'],
    );
  }
}
