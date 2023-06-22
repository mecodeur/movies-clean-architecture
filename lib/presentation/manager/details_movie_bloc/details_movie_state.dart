part of 'details_movie_bloc.dart';

class DetailsMovieState extends Equatable {
  final MovieDetailsEntity? movieDetails;
  final RequestState movieDetailsState;
  final String movieDetailsErrorMessage;

  final List<MovieRecommendationEntity> recommendationMovies;
  final RequestState recommendationMoviesState;
  final String recommendationMoviesMessageError;

  const DetailsMovieState({
    this.movieDetails,
    this.movieDetailsState = RequestState.loading,
    this.movieDetailsErrorMessage = '',
    this.recommendationMovies = const [],
    this.recommendationMoviesState = RequestState.loading,
    this.recommendationMoviesMessageError = '',
  });

  DetailsMovieState copyWith({
      MovieDetailsEntity? movieDetails,
      RequestState? movieDetailsState,
      String? movieDetailsErrorMessage,

      List<MovieRecommendationEntity>? recommendationMovies,
      RequestState? recommendationMoviesState,
      String? recommendationMoviesMessageError,
}){
    return DetailsMovieState(
        movieDetails: movieDetails ?? this.movieDetails,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsErrorMessage: movieDetailsErrorMessage ?? this.movieDetailsErrorMessage,
      recommendationMovies: recommendationMovies ?? this.recommendationMovies,
      recommendationMoviesState: recommendationMoviesState ?? this.recommendationMoviesState,
      recommendationMoviesMessageError: recommendationMoviesMessageError ?? this.recommendationMoviesMessageError,
    );
  }

  @override
  List<Object?> get props =>
      [
        movieDetails,
        movieDetailsState,
        movieDetailsErrorMessage,
        recommendationMovies,
        recommendationMoviesState,
        recommendationMoviesMessageError,
      ];
}
