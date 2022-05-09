import 'package:cached_network_image/cached_network_image.dart';
import 'package:engaztask/screens/category_products_screen.dart';
import 'package:engaztask/widgets/home_widgets/main_category_item_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/products/productcontroller_cubit.dart';

class MainCategoryScreen extends StatelessWidget {
  const MainCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white24,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: BlocBuilder<ProductControllerCubit, ProductControllerState>(
            builder: (context, state) {
              ProductControllerCubit mainCategories =
              BlocProvider.of<ProductControllerCubit>(context,listen: false);
              mainCategories.getMainCategories();

              return mainCategories.mainCategoryLoading
                  ?
                  const Center(
                    child:
                    CircularProgressIndicator()
                    ,)
                  :
              ListView.builder(
                itemCount: mainCategories.mainCategoryList!.length,
                  itemBuilder: (context, index) =>
                  Column(
                    children: [
                      SizedBox(height: size.height*0.012,),
                      InkWell(
                        onTap: (){
                          mainCategories.productsList!.clear();
                          mainCategories.productsLoading=true;
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryProductsScreen(
                            productId:int.parse(mainCategories.mainCategoryList![index].productsTypeId!) ,
                          )));
                        },
                        child: MainCategoryItemBuilder
                          (
                          reverse:index%2==0 ,
                          categoryDesc:mainCategories.mainCategoryList![index].productsTypeDiscription ,
                          categoryImage: mainCategories.mainCategoryList![index].productsTypeImage,
                          categoryName: mainCategories.mainCategoryList![index].productsTypeNameEnglish,
                        ),
                      ),
                      SizedBox(height: size.height*0.01,),

                    ],
                  )
              );
            },
          ),
        ),
      ),
    );
  }
}
