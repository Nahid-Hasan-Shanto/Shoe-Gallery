import 'package:b_grade/screens/product_details.dart';
import 'package:b_grade/widget/curve_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  static String ROUTE_NAME = '/Details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              //color: Colors.blue,
              height: 393,
              width: MediaQuery.of(context).size.width,
              child: ClipPath(
                clipper: CurveClipper(),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Center(
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            ProductDetails(),
          ],
        ),
      ),
    );
  }
}
