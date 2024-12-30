import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:name_age_predictor/domain/usecases/query_usecases.dart';

import '../domain/entities/response_entity.dart';

part 'api_query_event.dart';
part 'api_query_state.dart';

class ApiQueryBloc extends Bloc<ApiQueryEvent, ApiQueryState> {
  final QueryUsecases queryUsecases;
  ApiQueryBloc({
    required this.queryUsecases,
  }) : super(ApiQueryState(
          isSubmitting: false,
          response: null,
          countryName: null,
        )) {
    on<SendNamePressed>((event, emit) async {
      emit(ApiQueryState(
        isSubmitting: true,
        response: null,
        countryName: event.countryName, // we set this value for the next state
      ));
      final ResponseEntity responseEntity = await queryUsecases.fetchAge(event.name, event.countryId);;

      add(ResponseReceived(response: responseEntity));
    });

    on<ResponseReceived>((event, emit) async {
      emit(ApiQueryState(
        isSubmitting: false,
        response: event.response,
        countryName: state.countryName,
      ));
    });
  }
}
