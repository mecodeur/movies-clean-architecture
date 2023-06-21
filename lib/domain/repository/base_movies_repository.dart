import 'package:either_dart/either.dart';
import 'package:movies_clean_architecture_test/core/errors/failure.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_entity.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovies();

  Future<Either<Failure, List<MovieEntity>>> getNowPopularMovies();

  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies();
}

