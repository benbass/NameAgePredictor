import 'package:name_age_predictor/domain/entities/response_entity.dart';
import 'package:name_age_predictor/domain/repositories/response_repository.dart';

import '../datasources/remote_datasources.dart';

class ResponseRepositoryImpl implements ResponseRepository{
  final RemoteDataSources remoteDataSources;

  ResponseRepositoryImpl({required this.remoteDataSources});

  @override
  Future<ResponseEntity> fetchAge(String term, String? country) async {
    return await remoteDataSources.fetchAge(term, country);
  }

}