import 'package:bookly/Features/home/data/LocalDataSourses/Home_Local_Data_Source.dart';
import 'package:bookly/Features/home/data/RemotDataSoures/Home_Remote_Data_Source.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/core/utils/Api_Service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.asNewInstance();
void setupServiceLocator() {
  locator.registerSingleton<ApiService>(ApiService(Dio()));
  locator.registerSingleton<HomeRepoImple>(
    HomeRepoImple(
      homeLocalDataSource: implHomeLocalDataSource(),
      homeRemoteDataSource: HomeRemoteDataSourceIMPL(
        ApiService(Dio()),
      ),
    ),
  );
}
