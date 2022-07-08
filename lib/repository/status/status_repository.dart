import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http/io_client.dart';
import 'package:yoshlar_daftar/const.dart';

import 'package:yoshlar_daftar/repository/status/base_status.dart';
import 'package:yoshlar_daftar/response/status_response.dart';

class StatusRepository extends BaseStatusRepository {
  Dio dio = Dio();

  @override
  Future<StatusResponse> getStatusRequest(String code, String number) async {
    var queryParams = {"code": code, "number": number};
    print('REQURL IS ${base_url + url_status_request}?');
    print('QUERY IS $queryParams');
    var response = await dio.get(base_url + url_status_request,
        queryParameters: queryParams);
    print('RESPONSE IS ${response.requestOptions}');
    print('RESPONSE IS ${response.data}');

    if (response.statusCode == 200) {
      if (kDebugMode) {
        print('RESPONSE IS $response');
      }

      var checkResponse = statusResponseFromJson(response.toString());
      return checkResponse;
    } else {
      throw Exception('ERROR IS' + response.data.toString());
    }
  }

  void getHttp() async {}
}
