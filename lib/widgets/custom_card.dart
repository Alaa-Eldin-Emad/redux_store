
import 'package:flutter/material.dart';

import '../models/products_model.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({required this.products,
    super.key});
  ProductsModel products;
  final ValueNotifier favorite = ValueNotifier(0);
  Color favoriteColor =Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(height: 220,width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Card(
              elevation: 5,clipBehavior: Clip.none,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Text(products.title.substring(0,18),style: const TextStyle( color: Colors.grey,fontSize: 16
                  ),),
                  Row(
                    children: [
                    Text(r"$" '${products.price}'),
                    const Spacer(),
                    ValueListenableBuilder(
                      valueListenable: favorite,
                      builder: (context, snapshot, child) {
                        return
                    IconButton(icon: Icon(Icons.favorite,color: favoriteColor,),onPressed: (){if (favorite.value==0) {favorite.value=1;favoriteColor =Colors.red;}else {favorite.value=0; favoriteColor =Colors.grey;}
                      });
                      }
                    ),
                    ]
                  ,)
                        ]),
                ),),
          ),
        ),
        

          Positioned(left: 90, top: -90,bottom: 80, child: Image(image: NetworkImage(products.image),height: 150,width: 85,),),
      ],
      
    );
  }
}