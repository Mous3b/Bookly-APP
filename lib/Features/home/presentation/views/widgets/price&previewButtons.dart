import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class previewButton extends StatelessWidget {
  const previewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 150,
      child: MaterialButton(
        color: const Color(0xffEF8262),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        onPressed: () {},
        child: const Text(
          "Free preview",
          style: StylesSegoeUI.textstyle16,
        ),
      ),
    );
  }
}

class priceButton extends StatelessWidget {
  const priceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 150,
      child: MaterialButton(
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          "19.99€",
          style: Stylesinter.textStyle18.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
