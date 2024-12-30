part of 'api_query_bloc.dart';

class ApiQueryState {
  final bool isSubmitting;
  final String? countryName;
  final ResponseEntity? response;

  const ApiQueryState({
    required this.isSubmitting,
    required this.countryName,
    required this.response,
  });
}
