import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class bookfeatures extends StatelessWidget {
  const bookfeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsData.testimg,
          height: 105,
          width: 70,
        ),
        const SizedBox(
          width: 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .55,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Harry Potter and the Goblet of Fire",
                style: StylesSegoeUI.textstyle20,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  "J.K. Rowling",
                  style: Stylesinter.textStyle14,
                ),
              ),
              Row(
                children: [
                  Text(
                    "19.99 \$",
                    style: Stylesinter.textStyle18,
                  ),
                  const Spacer(),
                  SvgPicture.asset(AssetsData.starLogo),
                  const SizedBox(
                    width: 4.19,
                  ),
                  const Text("4.8"),
                  const SizedBox(
                    width: 6,
                  ),
                  const Opacity(
                    opacity: .5,
                    child: Text("(2390)"),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
