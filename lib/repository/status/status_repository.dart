import 'dart:io';

import 'package:yoshlar_daftar/const.dart';
import 'package:yoshlar_daftar/repository/status/base_status.dart';
import 'package:yoshlar_daftar/response/status_response.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class StatusRepository extends BaseStatusRepository {
  final Dio _httpClient = Dio();

  // @override
  // Future<StatusResponse> getStatusNoteBook(String number, String code) async {
  //   final response = await _httpClient.get(base_url + url_status_request,
  //       queryParameters: {"code": code, "number": number});
  //   if (response.statusCode == 200) {
  //     var responseStatus = statusResponseFromJson(response.toString());
  //     print('PLACE CATEGORIES IS => ${responseStatus}\n');
  //     return responseStatus;
  //   } else {
  //     throw Exception('ERROR IS' + response.data.toString());
  //   }
  // }

  @override
  Future<StatusResponse> getStatusRequest(String number, String code) async {
    print('WORKED HERE FIRSt');
    // (_httpClient.httpClientAdapter as DefaultHt).onHttpClientCreate =
    //     (HttpClient client) {
    //   client.badCertificateCallback =
    //       (X509Certificate cert, String host, int port) => true;
    //   return client;
    // };

    final response = await _httpClient.get('https://lm-api.mehnat.uz/api/v1/type-foreign-organizations',
        queryParameters: {"code": code, "number": number});


    print('WORKED HERE ${response.data}');

    if (response.statusCode == 200) {
      print('WORKED HERE THIRD');

      var responseStatus = statusResponseFromJson(response.toString());
      return responseStatus;
    } else {
      print('WORKED HERE 4');

      throw Exception('ERROR IS' + response.data.toString());
    }
  }
}
