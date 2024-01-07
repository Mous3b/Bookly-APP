import 'package:bookly/Features/home/presentation/views/widgets/listViewBooks.dart';
import 'package:flutter/material.dart';

class listViewResults extends StatelessWidget {
  const listViewResults({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: activeItem(),
        );
      },
    );
  }
}
