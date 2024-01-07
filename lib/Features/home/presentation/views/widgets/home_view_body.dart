import 'package:bookly/Features/home/presentation/views/widgets/bestSellerBody.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/customlsitview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 50),
                  child: CustomAppBar()),
              SizedBox(
                height: 30.15,
              ),
              CustomListView(),
              SizedBox(
                height: 43,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: BestSellerBody(),
          ),
        )
      ],
    );
  }
}
