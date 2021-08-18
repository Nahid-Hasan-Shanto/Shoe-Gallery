import 'package:flutter/material.dart';

import '../models/dummy_data.dart';
import '../models/product.dart';
import 'my_bags.dart';

class CartItem extends StatelessWidget {
  List<Product> products = Dummy.productList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: ListView.builder(
        itemBuilder: (context, index) {
          // return Text(index.toString());
          return Card(
              elevation: 12,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyBags(
                  id: products[index].id,
                  title: products[index].title,
                  image: products[index].image,
                  category: products[index].category,
                  price: products[index].price,
                ),
              ));
        },
        itemCount: products.length,
      ),
    );
  }
}
