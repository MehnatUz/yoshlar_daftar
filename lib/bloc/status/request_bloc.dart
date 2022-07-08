import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import 'package:yoshlar_daftar/repository/status/status_repository.dart';
import 'package:yoshlar_daftar/response/status_response.dart';

part 'request_event.dart';

part 'request_state.dart';

class RequestBloc extends Bloc<RequestEvent, RequestState> {
  StatusRepository repository = StatusRepository();

  RequestBloc() : super(RequestInitial()) {
    on<RequestEvent>(
      (event, emit) async {
        if (event is CheckPressed) {
          await _checkStatus(event, emit);
        }
      },
    );
  }

  Future<void> _checkStatus(
      CheckPressed event, Emitter<RequestState> emit) async {
    try {
      print('BLOC CHECK 2');
      emit(RequestLoading());

      StatusResponse response =
          await repository.getStatusRequest(event.code, event.number);
      print('BLOC CHECK 3');

      emit(RequestSuccess(response));
    } catch (err) {
      if (kDebugMode) {
        print('ERROR BLOC is $err');
      }
      emit(RequestFailed());
    }
  }
}
