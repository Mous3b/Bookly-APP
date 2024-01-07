import 'package:bookly/Features/home/presentation/views/widgets/bookFeatures.dart';
import 'package:bookly/core/utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class listViewBooks extends StatelessWidget {
  const listViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: activeItem(),
        );
      },
    );
  }
}

class activeItem extends StatelessWidget {
  const activeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          GoRouter.of(context).push(AppRouter.bookDetails);
        },
        child: const bookfeatures());
  }
}
