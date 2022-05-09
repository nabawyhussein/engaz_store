 import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:engaztask/models/main_categoryVM.dart';
import 'package:engaztask/models/productsVM.dart';

class ApiLogic{

   static Future<MainCategoryVm> getMainCategories() async
   {
     Response response = await Dio().get(
         'https://sae-marketing.com/NOON/api/LoadProductsTypeCategoriesPage.php', );
     return MainCategoryVm.fromJson(json.decode(response.toString()));
   }
   static Future<ProductsVm> getProducts(int mainCategoryId) async
   {
     FormData formData;
     formData = FormData.fromMap({
       "ProductsTypeID": mainCategoryId,
     });

     String url = "https://sae-marketing.com/NOON/api/LoadAllProductsOfSpecificProductsType.php";
     Response response = await Dio().post(
         url, data: formData, options: Options(
       method: 'POST',
       responseType: ResponseType.json,
     ));
     return ProductsVm.fromJson(json.decode(response.toString()));
   }
}