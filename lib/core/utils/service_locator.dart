import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_clean_architecture_test/core/utils/api_service.dart';
import 'package:movies_clean_architecture_test/data/data_source/remote_movies_data_source.dart';
import 'package:movies_clean_architecture_test/data/repository/movies_repository.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {

  getIt.registerSingleton(ApiService(Dio()));
  getIt.registerSingleton<MoviesRepository>(
      MoviesRepository(RemoteMoviesDataSource(getIt.get<ApiService>())));
}
