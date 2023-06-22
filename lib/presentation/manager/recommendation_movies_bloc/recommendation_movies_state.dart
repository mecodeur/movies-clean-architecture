part of 'recommendation_movies_bloc.dart';

class RecommendationMoviesState extends Equatable {
  final List<MovieRecommendationEntity> recommendationMovies;
  final RequestState recommendationMoviesState;
  final String recommendationMoviesMessageError;

  const RecommendationMoviesState(
      {this.recommendationMovies = const [],
      this.recommendationMoviesState = RequestState.loading,
      this.recommendationMoviesMessageError = ''});

  @override
  List<Object> get props => [
        recommendationMovies,
        recommendationMoviesState,
        recommendationMoviesMessageError,
      ];
}
