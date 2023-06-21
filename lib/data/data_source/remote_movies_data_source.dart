import 'package:movies_clean_architecture_test/core/utils/api_service.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_entity.dart';

import '../models/MovieModel.dart';

abstract class BaseRemoteMoviesDataSource {
  Future<List<MovieEntity>> getNowPlayingMovies();

  Future<List<MovieEntity>> getPopularMovies();

  Future<List<MovieEntity>> getTopRatedMovies();
}

class RemoteMoviesDataSource extends BaseRemoteMoviesDataSource{

  final ApiService apiService;

  RemoteMoviesDataSource(this.apiService);

  @override
  Future<List<MovieEntity>> getNowPlayingMovies() async{
    final Map<String, dynamic> data = await apiService.get(endPoint: '/movie/now_playing');

    List<MovieEntity> movies = getMovies(data);

    return movies;
  }

  @override
  Future<List<MovieEntity>> getPopularMovies() async{
    final Map<String, dynamic> data = await apiService.get(endPoint: '/movie/popular');

    List<MovieEntity> movies = getMovies(data);

    return movies;
  }

  @override
  Future<List<MovieEntity>> getTopRatedMovies() async{
    final Map<String, dynamic> data = await apiService.get(endPoint: '/movie/top_rated');

    List<MovieEntity> movies = getMovies(data);

    return movies;
  }

  List<MovieEntity> getMovies(Map<String, dynamic> data) {
    List<MovieEntity> movies = [];

    for(var mapMovies in data['results'] ){
      movies.add(MovieModel.fromJson(mapMovies));
    }
    return movies;
  }
}
