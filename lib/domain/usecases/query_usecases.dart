import 'package:name_age_predictor/domain/entities/response_entity.dart';
import 'package:name_age_predictor/domain/repositories/response_repository.dart';

class QueryUsecases {
  final ResponseRepository responseRepository;

  QueryUsecases({required this.responseRepository});

  Future<ResponseEntity> fetchAge(String name, String? country) async {
    return responseRepository.fetchAge(name, country);
  }
}