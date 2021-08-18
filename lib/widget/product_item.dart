import 'package:b_grade/widget/my_bag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String category;
  final double price;

  const ProductItem({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
    required this.category,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, MyBag.ROUTE_NAME);
      },
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                )
              ],
            ),
            Expanded(
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey.shade900,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              category,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
