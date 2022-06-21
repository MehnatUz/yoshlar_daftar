// To parse this JSON data, do
//
//     final statusResponse = statusResponseFromJson(jsonString);

import 'dart:convert';

StatusResponse statusResponseFromJson(String str) =>
    StatusResponse.fromJson(json.decode(str));

String statusResponseToJson(StatusResponse data) => json.encode(data.toJson());

class StatusResponse {
  StatusResponse({
    required this.success,
    required this.result,
    required this.msg,
  });

  bool success;
  Result result;
  String msg;

  factory StatusResponse.fromJson(Map<String, dynamic> json) => StatusResponse(
        success: json["success"],
        result: Result.fromJson(json["result"]),
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "result": result.toJson(),
        "msg": msg,
      };
}

class Result {
  Result({
    required this.application,
  });

  Application application;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        application: Application.fromJson(json["application"]),
      );

  Map<String, dynamic> toJson() => {
        "application": application.toJson(),
      };
}

class Application {
  Application({
    required this.id,
    this.surname,
    this.firstname,
    this.patronymic,
    this.status,
    this.confirmedByName,
    this.confirmedAt,
    this.denyReason,
    this.regionId,
    this.cityId,
    this.citySector,
    this.makhallaId,
    this.denyReasonId,
    this.confirmedByPhone,
    this.userCity,
    this.userCitySector,
    this.region,
    this.city,
    this.makhalla,
    this.applicationDenyReason,
  });

  int? id;
  String? surname;
  String? firstname;
  String? patronymic;
  int? status;
  String? confirmedByName;
  DateTime? confirmedAt;
  dynamic denyReason;
  int? regionId;
  int? cityId;
  int? citySector;
  int? makhallaId;
  dynamic denyReasonId;
  dynamic confirmedByPhone;
  UserCity? userCity;
  UserCity? userCitySector;
  City? region;
  City? city;
  Makhalla? makhalla;
  dynamic applicationDenyReason;

  factory Application.fromJson(Map<String, dynamic> json) => Application(
        id: json["id"] ?? 0,
        surname: json["surname"] ?? '',
        firstname: json["firstname"] ?? '',
        patronymic: json["patronymic"] ?? '',
        status: json["status"] ?? -1,
        confirmedByName: json["confirmed_by_name"] ?? '',
        confirmedAt: DateTime.parse(json["confirmed_at"] ?? DateTime(0)),
        denyReason: json["deny_reason"],
        regionId: json["region_id"] ?? 0,
        cityId: json["city_id"] ?? 0,
        citySector: json["city_sector"] ?? 0,
        makhallaId: json["makhalla_id"] ?? 0,
        denyReasonId: json["deny_reason_id"],
        confirmedByPhone: json["confirmed_by_phone"] ?? '',
        userCity: UserCity.fromJson(json["user_city"]),
        userCitySector: UserCity.fromJson(json["user_city_sector"]),
        region: City.fromJson(json["region"]),
        city: City.fromJson(json["city"]),
        makhalla: Makhalla.fromJson(json["makhalla"]),
        applicationDenyReason: json["application_deny_reason"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "surname": surname,
        "firstname": firstname,
        "patronymic": patronymic,
        "status": status,
        "confirmed_by_name": confirmedByName,
        "confirmed_at":
            "${confirmedAt?.year.toString().padLeft(4, '0')}-${confirmedAt?.month.toString().padLeft(2, '0')}-${confirmedAt?.day.toString().padLeft(2, '0')}",
        "deny_reason": denyReason,
        "region_id": regionId,
        "city_id": cityId,
        "city_sector": citySector,
        "makhalla_id": makhallaId,
        "deny_reason_id": denyReasonId,
        "confirmed_by_phone": confirmedByPhone,
        "user_city": userCity!.toJson(),
        "user_city_sector": userCitySector!.toJson(),
        "region": region!.toJson(),
        "city": city!.toJson(),
        "makhalla": makhalla!.toJson(),
        "application_deny_reason": applicationDenyReason,
      };
}

class City {
  City({
    this.id,
    this.nameUz,
    this.nameCyrl,
  });

  int? id;
  String? nameUz;
  String? nameCyrl;

  factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"] ?? 0,
        nameUz: json["name_uz"] ?? '',
        nameCyrl: json["name_cyrl"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name_uz": nameUz,
        "name_cyrl": nameCyrl,
      };
}

class Makhalla {
  Makhalla({
    required this.id,
    this.name,
    this.citySector,
  });

  int id;
  String? name;
  int? citySector;

  factory Makhalla.fromJson(Map<String, dynamic> json) => Makhalla(
        id: json["id"],
        name: json["name"] ?? '',
        citySector: json["city_sector"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "city_sector": citySector,
      };
}

class UserCity {
  UserCity({
    required this.id,
    this.phone,
    this.fullname,
    this.limited,
    this.isEditable,
    this.citySector,
  });

  int id;
  String? phone;
  String? fullname;
  bool? limited;
  bool? isEditable;
  int? citySector;

  factory UserCity.fromJson(Map<String, dynamic> json) => UserCity(
        id: json["id"],
        phone: json["phone"] ?? '',
        fullname: json["fullname"] ?? '',
        limited: json["limited"] ?? false,
        isEditable: json["is_editable"] ?? false,
        citySector: json["city_sector"] ?? -1,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "phone": phone,
        "fullname": fullname,
        "limited": limited,
        "is_editable": isEditable,
        "city_sector": citySector ?? -1,
      };
}
