import 'package:b_grade/models/dummy_data.dart';
import 'package:b_grade/models/product.dart';
import 'package:b_grade/widget/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductsItem extends StatelessWidget {
  List<Product> products = Dummy.productList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey.shade200,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Positioned(
            //   left: 55,
            //   width: 100,
            //   //margin: EdgeInsets.only(left: 30, bottom: 0.0),
            //   child: Container(
            //     margin: EdgeInsets.only(top: 0.0),
            //     child: Text(
            //       'Found 10 Result',
            //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  itemCount: products.length,
                  crossAxisCount: 4,
                  itemBuilder: (context, index) {
                    //  Product item = products[index];
                    return Card(
                      elevation: 12,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProductItem(
                          id: products[index].id,
                          title: products[index].title,
                          image: products[index].image,
                          category: products[index].category,
                          price: products[index].price,
                        ),
                      ),
                      // ),
                    );

                    //Transform.translate(
                    //   offset: Offset(0.0, index.isEven ? 40 : 0.0),
                    // child:
                  },
                  staggeredTileBuilder: (index) {
                    return StaggeredTile.count(2, index.isEven ? 3 : 2);
                  }

                  // itemCount: products.length,
                  // padding: const EdgeInsets.all(25),
                  // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  //   maxCrossAxisExtent: 300,
                  //   childAspectRatio: 2 / 2,
                  //   crossAxisSpacing: 15,
                  //   mainAxisSpacing: 15,
                  // ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
