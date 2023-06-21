import 'package:movies_clean_architecture_test/core/utils/api_service.dart';
import 'package:movies_clean_architecture_test/data/models/movie_details_model.dart';

import '../../domain/entities/movie_details_entity.dart';
import '../../domain/usecases/get_movie_details_usecase.dart';
import '../models/MovieModel.dart';

abstract class BaseRemoteMoviesDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();

  Future<List<MovieModel>> getPopularMovies();

  Future<List<MovieModel>> getTopRatedMovies();

  Future<MovieDetailsEntity> getMovieDetails(MovieDetailsParameter parameters);
}

class RemoteMoviesDataSource extends BaseRemoteMoviesDataSource {
  final ApiService apiService;

  RemoteMoviesDataSource(this.apiService);

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final Map<String, dynamic> data =
        await apiService.get(endPoint: '/movie/now_playing');

    List<MovieModel> movies = getMovies(data);

    return movies;
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final Map<String, dynamic> data =
        await apiService.get(endPoint: '/movie/popular');

    List<MovieModel> movies = getMovies(data);

    return movies;
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final Map<String, dynamic> data =
        await apiService.get(endPoint: '/movie/top_rated');

    List<MovieModel> movies = getMovies(data);

    return movies;
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(
      MovieDetailsParameter parameters) async {
    final Map<String, dynamic> data =
        await apiService.get(endPoint: '/movie/${parameters.id}');

    MovieDetailsModel movieDetails = MovieDetailsModel.fromJson(data);

    return movieDetails;
  }

  List<MovieModel> getMovies(Map<String, dynamic> data) {
    List<MovieModel> movies = [];

    for (var mapMovies in data['results']) {
      movies.add(MovieModel.fromJson(mapMovies));
    }
    return movies;
  }
}
