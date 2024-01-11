import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/domain/entities/bookEntity.dart';
import 'package:bookly/Features/home/domain/useCases/fetchFeatureBookUC.dart';
import 'package:bookly/Features/home/domain/useCases/fetchNewestBookUC.dart';
import 'package:bookly/Features/home/presentation/views/manager/cubit/featuredBooks/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/manager/cubit/newestBooks/newest_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/AppRouter.dart';
import 'package:bookly/core/utils/functions/setupServiceLocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  runApp(const BooklyApp());
  await Hive.initFlutter();
  setupServiceLocator();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(KfeaturedBox);
  await Hive.openBox(KNewestBox);
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              fetchFeatureBookUC(locator.get<HomeRepoImple>()),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              fetchNewestBookUC(locator.get<HomeRepoImple>()),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: KPrimaryColor),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
