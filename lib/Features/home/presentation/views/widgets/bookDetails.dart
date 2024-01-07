import 'package:bookly/Features/home/presentation/views/widgets/customlsitview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/price&previewButtons.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KPrimaryColor,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 36,
              ),
              Image.asset(
                AssetsData.testimg,
                scale: .87,
              ),
              const SizedBox(
                height: 42,
              ),
              Text(
                'The Jungle Book',
                style: StylesSegoeUI.textstyle20.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Rudyard Kipling',
                style: Stylesinter.textStyle18.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AssetsData.starLogo),
                  const SizedBox(
                    width: 4.19,
                  ),
                  Text(
                    "4.8",
                    style: Stylesinter.textStyle16,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Opacity(
                    opacity: .5,
                    child: Text(
                      "(2390)",
                      style: Stylesinter.textStyle14,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [priceButton(), previewButton()],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 40),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'You can also like',
                          style: Stylesinter.textStyle14.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      const Expanded(child: CustomListView()),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

// class recommendedBody extends StatelessWidget {
//   const recommendedBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(itemCount: 10,itemBuilder: (context, index) {return });
//   }
// }
