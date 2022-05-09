// To parse this JSON data, do
//
//     final mainCategoryVm = mainCategoryVmFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

MainCategoryVm mainCategoryVmFromJson(String str) => MainCategoryVm.fromJson(json.decode(str));

String mainCategoryVmToJson(MainCategoryVm data) => json.encode(data.toJson());

class MainCategoryVm {
  MainCategoryVm({
    @required this.statusCode,
    @required this.success,
    @required this.data,
    @required this.message,
  });

  int? statusCode;
  bool? success;
  List<Datum>? data;
  String? message;

  factory MainCategoryVm.fromJson(Map<String, dynamic> json) => MainCategoryVm(
    statusCode: json["status_code"],
    success: json["success"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status_code": statusCode,
    "success": success,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    "message": message,
  };
}

class Datum {
  Datum({
    @required this.productsTypeId,
    @required this.productsTypeImage,
    @required this.productsTypeNameArabic,
    @required this.productsTypeNameAbri,
    @required this.productsTypeNameEnglish,
    @required this.productsTypeNameRussian,
    @required this.productsTypeStatus,
    @required this.loadInHomePage,
    @required this.productsTypeDiscription,
    @required this.lastUpdated,
    @required this.createdAtProductsTyps,
  });

  String? productsTypeId;
  String? productsTypeImage;
  String ?productsTypeNameArabic;
  String ?productsTypeNameAbri;
  String ?productsTypeNameEnglish;
  String ?productsTypeNameRussian;
  String ?productsTypeStatus;
  String ?loadInHomePage;
  String ?productsTypeDiscription;
  String? lastUpdated;
  String ?createdAtProductsTyps;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    productsTypeId: json["ProductsTypeID"],
    productsTypeImage: json["ProductsTypeImage"],
    productsTypeNameArabic: json["ProductsTypeNameArabic"],
    productsTypeNameAbri: json["ProductsTypeNameAbri"],
    productsTypeNameEnglish: json["ProductsTypeNameEnglish"],
    productsTypeNameRussian: json["ProductsTypeNameRussian"],
    productsTypeStatus: json["ProductsTypeStatus"],
    loadInHomePage: json["LoadInHomePage"],
    productsTypeDiscription: json["ProductsTypeDiscription"],
    lastUpdated: json["lastUpdated"],
    createdAtProductsTyps: json["CreatedAtProductsTyps"],
  );

  Map<String, dynamic> toJson() => {
    "ProductsTypeID": productsTypeId,
    "ProductsTypeImage": productsTypeImage,
    "ProductsTypeNameArabic": productsTypeNameArabic,
    "ProductsTypeNameAbri": productsTypeNameAbri,
    "ProductsTypeNameEnglish": productsTypeNameEnglish,
    "ProductsTypeNameRussian": productsTypeNameRussian,
    "ProductsTypeStatus": productsTypeStatus,
    "LoadInHomePage": loadInHomePage,
    "ProductsTypeDiscription": productsTypeDiscription,
    "lastUpdated": lastUpdated,
    "CreatedAtProductsTyps": createdAtProductsTyps,
  };
}
