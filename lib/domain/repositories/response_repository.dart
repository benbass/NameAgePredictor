import 'package:name_age_predictor/domain/entities/response_entity.dart';

abstract class ResponseRepository{
  Future<ResponseEntity> fetchAge(String term, String? countryId);
}