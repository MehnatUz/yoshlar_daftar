import 'package:yoshlar_daftar/response/status_response.dart';

abstract class BaseStatusRepository {
  Future<StatusResponse> getStatusRequest(String number, String code);

  //Future<StatusResponse> getStatusNoteBook(String number, String code);
}
