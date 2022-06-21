part of 'request_bloc.dart';

@immutable
abstract class RequestState {}

class RequestInitial extends RequestState {}

class RequestLoading extends RequestState {}

class RequestFailed extends RequestState {}

class RequestSuccess extends RequestState {
  final StatusResponse response;

  RequestSuccess(this.response);
}
