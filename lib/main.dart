import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/AppRouter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: KPrimaryColor),
      routerConfig: AppRouter.router,
    );
  }
}
