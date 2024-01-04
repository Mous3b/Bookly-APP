import 'package:bookly/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingText();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const Homepage(),
          transition: Transition.cupertino, duration: KtransationDuration);
    });
  }

  void initSlidingText() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.c,
      children: [
        Center(
          child: Image.asset(
            AssetsData.logo,
            fit: BoxFit.fill,
            scale: .25,
          ),
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}
