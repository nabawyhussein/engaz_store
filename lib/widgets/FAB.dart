import 'package:engaztask/bloc/products/productcontroller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyFab extends StatelessWidget {
  const MyFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductControllerCubit Products =
    BlocProvider.of<ProductControllerCubit>(context, listen: true);
    Size size = MediaQuery
        .of(context)
        .size;
    return BlocBuilder<ProductControllerCubit, ProductControllerState>(
      builder: (context, state) {

        return InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)
                  )
              ),
              builder: (context) {
                return Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)
                      )
                  ),
                  child: Wrap(
                    children: [
                      ListTile(
                        selectedColor: Colors.red,
                        leading: Icon(Icons.sort_rounded),
                        title: Text('Price'),
                        onTap: () {

                          Products.sortByPrice();
                          Navigator.pop(context);
                        },

                      ),
                      ListTile(
                        leading: Icon(Icons.sort_rounded),
                        title: Text('Quantity'),
                        onTap: () {

                          Products.sortByQuantity();
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.sort_rounded),
                        title: Text('Total Rates'),
                        onTap: () {


                          Products.sortByRate();
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20)
            ),
            width: size.width * 0.28,
            height: size.height * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.sort_rounded),
                Text('Sort')
              ],
            ),
          ),
        );
      },
    );
  }
}
