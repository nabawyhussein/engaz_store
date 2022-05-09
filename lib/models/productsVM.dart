// To parse this JSON data, do
//
//     final productsVm = productsVmFromJson(jsonString);

import 'dart:convert';

ProductsVm productsVmFromJson(String str) => ProductsVm.fromJson(json.decode(str));
class ProductsVm {
  ProductsVm({
    this.statusCode,
    this.success,
    this.data,
    this.message,
  });

  int? statusCode;
  bool? success;
  List<Product>? data;
  String? message;

  factory ProductsVm.fromJson(Map<String, dynamic> json) => ProductsVm(
    statusCode: json["status_code"],
    success: json["success"],
    data: List<Product>.from(json["data"].map((x) => Product.fromJson(x))),
    message: json["message"],
  );

}

class Product {
  Product({
    this.productsId,
    this.sellerId,
    this.productsName,
    this.productsPrice,
    this.productsOfferPrice,
    this.currencyId,
    this.productsStatus,
    this.productsDescription,
    this.productsWordsToSearch,
    this.productsBarcode,
    this.productsTypeId,
    this.subCategoryId,
    this.productsInsuranceCompany,
    this.productsInsuranceDuration,
    this.productsQuantity,
    this.productsFirstImage,
    this.productsSecondImage,
    this.productsThirdImage,
    this.productsFourthmage,
    this.productsFifthImage,
    this.dealsOfToday,
    this.productRate,
    this.productTotalRates,
    this.productTotalNum,
    this.lastUpdated,
    this.createdAtProducts,
    this.productsTypeImage,
    this.productsTypeNameArabic,
    this.productsTypeNameAbri,
    this.productsTypeNameEnglish,
    this.productsTypeNameRussian,
    this.productsTypeStatus,
    this.loadInHomePage,
    this.productsTypeDiscription,
    this.createdAtProductsTyps,
    this.sellerFirstName,
    this.sellerLastName,
    this.sellerEmail,
    this.sellerPassword,
    this.sellerCountryId,
    this.sellerStoreName,
    this.sellerCompanyLegelName,
    this.sellerCompanyPhoneNumber,
  });

  String? productsId;
  String ?sellerId;
  String? productsName;
  String ?productsPrice;
  String? productsOfferPrice;
  String ?currencyId;
  String? productsStatus;
  String ?productsDescription;
  String? productsWordsToSearch;
  String? productsBarcode;
  String? productsTypeId;
  String ?subCategoryId;
  String? productsInsuranceCompany;
  String? productsInsuranceDuration;
  String? productsQuantity;
  String ?productsFirstImage;
  String? productsSecondImage;
  String? productsThirdImage;
  String ?productsFourthmage;
  String? productsFifthImage;
  String ?dealsOfToday;
  String? productRate;
  String? productTotalRates;
  String ?productTotalNum;
  String? lastUpdated;
  String? createdAtProducts;
  String? productsTypeImage;
  String? productsTypeNameArabic;
  String ?productsTypeNameAbri;
  String? productsTypeNameEnglish;
  String? productsTypeNameRussian;
  String? productsTypeStatus;
  String? loadInHomePage;
  String ?productsTypeDiscription;
  String? createdAtProductsTyps;
  String ?sellerFirstName;
  String ?sellerLastName;
  String? sellerEmail;
  String? sellerPassword;
  String? sellerCountryId;
  String? sellerStoreName;
  String ?sellerCompanyLegelName;
  String ?sellerCompanyPhoneNumber;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    productsId: json["ProductsID"],
    sellerId: json["SellerID"],
    productsName: json["ProductsName"],
    productsPrice: json["ProductsPrice"],
    productsOfferPrice: json["ProductsOfferPrice"],
    currencyId: json["CurrencyID"],
    productsStatus: json["ProductsStatus"],
    productsDescription: json["ProductsDescription"],
    productsWordsToSearch: json["ProductsWordsToSearch"],
    productsBarcode: json["ProductsBarcode"],
    productsTypeId: json["ProductsTypeID"],
    subCategoryId: json["SubCategoryId"],
    productsInsuranceCompany: json["ProductsInsuranceCompany"],
    productsInsuranceDuration: json["ProductsInsuranceDuration"],
    productsQuantity: json["ProductsQuantity"],
    productsFirstImage: json["ProductsFirstImage"],
    productsSecondImage: json["ProductsSecondImage"],
    productsThirdImage: json["ProductsThirdImage"],
    productsFourthmage: json["ProductsFourthmage"],
    productsFifthImage: json["ProductsFifthImage"],
    dealsOfToday: json["DealsOfToday"],
    productRate: json["ProductRate"],
    productTotalRates: json["ProductTotalRates"],
    productTotalNum: json["ProductTotalNum"],
    lastUpdated: json["lastUpdated"],
    createdAtProducts: json["CreatedAtProducts"],
    productsTypeImage: json["ProductsTypeImage"],
    productsTypeNameArabic: json["ProductsTypeNameArabic"],
    productsTypeNameAbri: json["ProductsTypeNameAbri"],
    productsTypeNameEnglish: json["ProductsTypeNameEnglish"],
    productsTypeNameRussian: json["ProductsTypeNameRussian"],
    productsTypeStatus: json["ProductsTypeStatus"],
    loadInHomePage: json["LoadInHomePage"],
    productsTypeDiscription: json["ProductsTypeDiscription"],
    createdAtProductsTyps: json["CreatedAtProductsTyps"],
    sellerFirstName: json["SellerFirstName"],
    sellerLastName: json["SellerLastName"],
    sellerEmail: json["SellerEmail"],
    sellerPassword: json["SellerPassword"],
    sellerCountryId: json["SellerCountryID"],
    sellerStoreName: json["SellerStoreName"],
    sellerCompanyLegelName: json["SellerCompanyLegelName"],
    sellerCompanyPhoneNumber: json["SellerCompanyPhoneNumber"],
  );

}
