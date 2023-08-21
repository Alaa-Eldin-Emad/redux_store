import 'package:flutter/material.dart';
import 'package:redux_store/modules/add_products.dart';

import '../models/products_model.dart';
import '../services/get_all_products.dart';
import '../widgets/custom_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Trendee",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {Navigator.push(context,MaterialPageRoute(
                                          builder: (context) => AddingForm()),);},
                icon: const Icon(
                  size: 30,
                  Icons.add_box,
                  color: Colors.black,
                ))
          ],
        ),
        body: FutureBuilder<List<ProductsModel>>(
          future: AllProductsService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductsModel> products = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.fromLTRB(15, 60, 15, 15),
                child: ListView.builder(
                 
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomCard(
                      products: products[index],
                    );
                  },
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
