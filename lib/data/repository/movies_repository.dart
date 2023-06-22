import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_clean_architecture_test/core/errors/failure.dart';
import 'package:movies_clean_architecture_test/data/data_source/remote_movies_data_source.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_details_entity.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_entity.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_recommendation_entity.dart';
import 'package:movies_clean_architecture_test/domain/repository/base_movies_repository.dart';
import 'package:movies_clean_architecture_test/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_clean_architecture_test/domain/usecases/get_movies_recommendation_usecase.dart';

import '../models/movie_details_model.dart';
import '../models/movie_recommendation_model.dart';

class MoviesRepository extends BaseMoviesRepository {
  final RemoteMoviesDataSource remoteMoviesDataSource;

  MoviesRepository(this.remoteMoviesDataSource);

  @override
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovies() async {
    try {
      final List<MovieEntity> result =
          await remoteMoviesDataSource.getNowPlayingMovies();
      return right(result);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies() async {
    try {
      final List<MovieEntity> result =
          await remoteMoviesDataSource.getPopularMovies();
      return right(result);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies() async {
    try {
      final List<MovieEntity> result =
          await remoteMoviesDataSource.getTopRatedMovies();
      return right(result);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MovieDetailsEntity>> getMovieDetails(
      MovieDetailsParameter id) async {
    try {
      final MovieDetailsModel result =
          await remoteMoviesDataSource.getMovieDetails(id);
      return right(result);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieRecommendationEntity>>>
      getMoviesRecommendation(MoviesRecommendationParameters id) async {
    try {
      final List<MovieRecommendationModel> result =
          await remoteMoviesDataSource.getMoviesRecommendation(id);
      return right(result);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
