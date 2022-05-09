import 'package:bloc/bloc.dart';
import 'package:engaztask/models/main_categoryVM.dart';
import 'package:engaztask/models/productsVM.dart';
import 'package:engaztask/repo/api_logic.dart';
import 'package:meta/meta.dart';

part 'productcontroller_state.dart';

class ProductControllerCubit extends Cubit<ProductControllerState> {
  ProductControllerCubit() : super(ProductControllerInitial());
  List<Datum>? mainCategoryList=[];
  List<Product>? productsList=[];
  bool mainCategoryLoading=true;
  bool productsLoading=true;



  getMainCategories()async{
if(mainCategoryList!.isEmpty)
  {
    MainCategoryVm mainCategoryVm = await ApiLogic.getMainCategories();
    mainCategoryVm.data!.removeWhere((element) => element.loadInHomePage=="NO");
        mainCategoryList =mainCategoryVm.data;
    // mainCategoryList?.sort((a, b){ //sorting in ascending order
    //   return DateTime.parse(a.lastUpdated!).compareTo(DateTime.parse(b.lastUpdated!));
    // });
    mainCategoryLoading=false;
    emit(MainCategoriesLoaded());
    print("mainCategoryList!.length");
    print(mainCategoryList!.length);
  }

  }
  getProducts(int id)async{
      ProductsVm productsVm  = await ApiLogic.getProducts(id);
      productsList =productsVm.data;
      productsLoading=false;
    print("productsList!.length");
    print(productsList!.length);
      emit(ProductsLoaded());


  }
  sortByRate(){
    productsList!.sort((a, b) => a.productRate!.compareTo(b.productRate!));;

    emit(ProductsSorted());
  }
  sortByPrice(){
    productsList!.sort((a, b) => a.productsOfferPrice!.compareTo(b.productsOfferPrice!));

    emit(ProductsSorted());
  }
  sortByQuantity(){
    productsList!.sort((a, b) => a.productsQuantity!.compareTo(b.productsQuantity!));;

    emit(ProductsSorted());
  }

}
