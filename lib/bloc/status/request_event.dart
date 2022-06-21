part of 'request_bloc.dart';

@immutable
abstract class RequestEvent {}

class CheckPressed extends RequestEvent {
  final String code;
  final String number;

  CheckPressed(this.code, this.number);
}
