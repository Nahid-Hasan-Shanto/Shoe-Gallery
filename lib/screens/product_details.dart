import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        // // width: size.width,
        // //padding: EdgeInsets.symmetric(horizontal: 12),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Row(
        //       children: [
        //         Column(
        //           children: [
        //             Text('Good product'),
        //   //           ],
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
        );
  }
}
