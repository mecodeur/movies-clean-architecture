import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_clean_architecture_test/core/errors/failure.dart';
import 'package:movies_clean_architecture_test/core/utils/base_usecase.dart';
import 'package:movies_clean_architecture_test/domain/entities/recommendation_movie_entity.dart';
import 'package:movies_clean_architecture_test/domain/repository/base_movies_repository.dart';

class GetMoviesRecommendationUseCase extends BaseUseCase<
    List<RecommendationMovieEntity>, MoviesRecommendationParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMoviesRecommendationUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<RecommendationMovieEntity>>> call(
      MoviesRecommendationParameters parameters) async {
    return await baseMoviesRepository.getMoviesRecommendation(parameters);
  }
}

class MoviesRecommendationParameters extends Equatable {
  final int id;

  const MoviesRecommendationParameters(this.id);

  @override
  List<Object> get props => [id];
}
