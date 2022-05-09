part of 'productcontroller_cubit.dart';

@immutable
abstract class ProductControllerState {}

class ProductControllerInitial extends ProductControllerState {}
class LoadingMainCategories extends ProductControllerState {}
class MainCategoriesLoaded extends ProductControllerState {}
class ProductsLoaded extends ProductControllerState {}
class ProductsSorted extends ProductControllerState {}
