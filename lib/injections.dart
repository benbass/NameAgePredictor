import 'package:get_it/get_it.dart';
import 'package:name_age_predictor/application/api_query_bloc.dart';
import 'package:name_age_predictor/domain/repositories/response_repository.dart';
import 'package:name_age_predictor/domain/usecases/query_usecases.dart';
import 'package:name_age_predictor/infrastructure/datasources/remote_datasources.dart';
import 'package:name_age_predictor/infrastructure/repositories/response_repository_impl.dart';

import 'core/formkey.dart';

final getItI = GetIt.instance;

Future<void> init() async {
  // Repos
  getItI.registerLazySingleton<ResponseRepository>(
      () => ResponseRepositoryImpl(remoteDataSources: getItI()));

  // Data sources
  getItI
      .registerLazySingleton<RemoteDataSources>(() => RemoteDataSourcesImpl());
  
  // State management
  getItI.registerFactory(() => ApiQueryBloc(queryUsecases: getItI()));
  
  // Use cases
  getItI.registerLazySingleton(() => QueryUsecases(responseRepository: getItI()));

  // Core
  getItI.registerLazySingleton<MyFormKey>(() => MyFormKey());
}
