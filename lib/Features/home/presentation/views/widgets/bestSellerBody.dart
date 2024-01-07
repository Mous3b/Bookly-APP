import 'package:bookly/Features/home/presentation/views/widgets/listViewBooks.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerBody extends StatelessWidget {
  const BestSellerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Best Seller",
            style: Stylesinter.textStyle18,
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        const listViewBooks(),
      ],
    );
  }
}
