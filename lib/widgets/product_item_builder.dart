import 'package:cached_network_image/cached_network_image.dart';
import 'package:engaztask/models/productsVM.dart';
import 'package:flutter/material.dart';

class ProductItemBuilder extends StatelessWidget {
  Product product;
   ProductItemBuilder({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Column(
      children: [
        Container(
          width: size.width*.45,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Column(
                    children: [
                      SizedBox(height: size.height*0.04,),
                      Container(

                        child: CachedNetworkImage(
                          imageUrl: product.productsFirstImage!,
                          // placeholder: (context, url) => Container(
                          //   width: size.width*.12,
                          //   height: size.height*.05,
                          //   child: CircularProgressIndicator(
                          //   ),
                          // ),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                          width: size.width*.4,
                          height: size.height*0.2,
                        ),


                      ),
                      SizedBox(height: size.height*0.02,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.yellow,),
                                SizedBox(width: size.width*0.02,),
                                Text(
                                  product.productRate!,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.width*.04,
                                      fontWeight: FontWeight.bold

                                  ),),
                                Spacer(),
                                Text(
                                  product.productsQuantity!,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.width*.04,
                                      fontWeight: FontWeight.bold

                                  ),),

                              ],
                            ),
                            Text(product.productsDescription!,maxLines: 2,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: size.width*.035,
                              ),),
                            Row(children: [
                              Text(
                                product.productsOfferPrice!
                                ,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width*.04,
                                  fontWeight: FontWeight.bold,

                                ),),
                              SizedBox(width: size.width*0.02,),
                              Text(
                                product.productsPrice!,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: size.width*.035,

                                  decoration: TextDecoration.lineThrough,

                                ),),
                            ],)
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite_border_outlined,color: Colors.grey,),
                  ),

                ],
              )
            ],
          ),

        ),
        // SizedBox(height: size.height*0.01,),
        // Container(
        //   width: size.width*.45,
        //   height: size.height*0.12,
        //   decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(15)
        //   ),
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Row(
        //           children: [
        //             Icon(Icons.star,color: Colors.yellow,),
        //             SizedBox(width: size.width*0.02,),
        //             Text(
        //               product.productRate!,
        //               style: TextStyle(
        //                   color: Colors.black,
        //                   fontSize: size.width*.04,
        //                   fontWeight: FontWeight.bold
        //
        //               ),),
        //             Spacer(),
        //             Text(
        //               product.productsQuantity!,
        //               style: TextStyle(
        //                   color: Colors.black,
        //                   fontSize: size.width*.04,
        //                   fontWeight: FontWeight.bold
        //
        //               ),),
        //
        //           ],
        //         ),
        //         Text(product.productsDescription!,maxLines: 2,
        //           style: TextStyle(
        //             color: Colors.black,
        //             fontSize: size.width*.035,
        //           ),),
        //         Row(children: [
        //           Text(
        //         product.productsOfferPrice!
        //             ,
        //             style: TextStyle(
        //               color: Colors.black,
        //               fontSize: size.width*.04,
        //               fontWeight: FontWeight.bold,
        //
        //             ),),
        //           SizedBox(width: size.width*0.02,),
        //           Text(
        //             product.productsPrice!,
        //             style: TextStyle(
        //               color: Colors.grey,
        //               fontSize: size.width*.035,
        //
        //               decoration: TextDecoration.lineThrough,
        //
        //             ),),
        //         ],)
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
}
