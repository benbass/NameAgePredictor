part of 'api_query_bloc.dart';

@immutable
sealed class ApiQueryEvent {}

class SendNamePressed extends ApiQueryEvent {
  final String name;
  final String? countryId; // we use this for the http request (country code)
  final String? countryName; // we use this for the UI (full country name)

  SendNamePressed({
    required this.name,
    required this.countryId,
    required this.countryName
  });
}

class ResponseReceived extends ApiQueryEvent{
  final ResponseEntity response;

  ResponseReceived({
    required this.response,
  });
}


