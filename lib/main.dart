import 'package:bookly/Features/home/domain/entities/bookEntity.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  runApp(const BooklyApp());
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(KfeaturedBox);
  await Hive.openBox(KNewestBox);
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
