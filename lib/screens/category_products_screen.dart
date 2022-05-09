import 'package:cached_network_image/cached_network_image.dart';
import 'package:engaztask/widgets/FAB.dart';
import 'package:engaztask/widgets/product_item_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../bloc/products/productcontroller_cubit.dart';

class CategoryProductsScreen extends StatefulWidget {
  int? productId;
  CategoryProductsScreen({Key? key, this.productId}) : super(key: key);

  @override
  State<CategoryProductsScreen> createState() => _CategoryProductsScreenState();
}

class _CategoryProductsScreenState extends State<CategoryProductsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ProductControllerCubit Products =
    BlocProvider.of<ProductControllerCubit>(context, listen: false);
    Products.getProducts(widget.productId!);
  }
  @override
  Widget build(BuildContext context) {
    ProductControllerCubit Products =
    BlocProvider.of<ProductControllerCubit>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white24.withOpacity(.9),
        body: BlocBuilder<ProductControllerCubit, ProductControllerState>(
          builder: (context, state) {


            return (Products.productsLoading )
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : MasonryGridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                    ),
                    itemCount: Products.productsList!.length,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 0,
                    itemBuilder: (_, int index) {
                      return Column(
                        children: [
                          if (index == 0)
                            const SizedBox(
                              height: 20.0,
                            ),
                          if (index == 1)
                            const SizedBox(
                              height: 20.0,
                            ),
                          ProductItemBuilder(
                              product: Products.productsList![index]),
                        ],
                      );
                    });
          },
        ),
        floatingActionButton: const MyFab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
