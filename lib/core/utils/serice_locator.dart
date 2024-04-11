import 'package:booky_app/core/utils/api_services.dart';
import 'package:booky_app/features/home/data/repos/home_repo_impel.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      apiService:getIt.get<ApiService>()
    ),
  );
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
}
