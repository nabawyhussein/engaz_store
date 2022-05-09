import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MainCategoryItemBuilder extends StatelessWidget {
  String ? categoryName;
  String ? categoryDesc;
  String ? categoryImage;
  bool ? reverse;
  MainCategoryItemBuilder({Key? key,this.categoryName,this.categoryDesc,
    this.categoryImage,this.reverse=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:
        reverse! ?
        Row(
          children:  [
            Expanded(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(categoryName!,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width*.05,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(
                    height: size.height*0.015,
                  ),
                  Text(
                    categoryDesc!
                    , maxLines: 3,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: size.width*.04,

                    ),),
                ],
              ),
            ),
            SizedBox(
              width: size.width*0.1,
            ),
            CachedNetworkImage(
              imageUrl: categoryImage!,
              // placeholder: (context, url) => Container(
              //   width: size.width*.12,
              //   height: size.height*.05,
              //   child: CircularProgressIndicator(
              //   ),
              // ),
              errorWidget: (context, url, error) => Icon(Icons.error),
              width: size.width*.3,

            ),
          ],
        )
            :
        Row(
          children:  [
            CachedNetworkImage(
              imageUrl: categoryImage!,
              // placeholder: (context, url) => Container(
              //   width: size.width*.12,
              //   height: size.height*.05,
              //   child: CircularProgressIndicator(
              //   ),
              // ),
              errorWidget: (context, url, error) => Icon(Icons.error),
              width: size.width*.3,

            ),
            Spacer(),
            Expanded(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(categoryName!,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width*.05,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(
                    height: size.height*0.015,
                  ),
                  Text(
                  categoryDesc!
                  , maxLines: 3,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: size.width*.04,

                    ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
