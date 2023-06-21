import 'package:dartz/dartz.dart';
import 'package:movies_clean_architecture_test/core/errors/failure.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_details_entity.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_entity.dart';

import '../usecases/get_movie_details_usecase.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovies();

  Future<Either<Failure, List<MovieEntity>>> getPopularMovies();

  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetailsEntity>> getMovieDetails(MovieDetailsParameter id);

  Future<Either<Failure, MovieDetailsEntity>> getMovieRecommendations(int id);
}

