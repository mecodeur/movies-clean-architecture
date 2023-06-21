part of 'details_movie_bloc.dart';

class DetailsMovieState extends Equatable {
  final MovieDetailsEntity? movieDetails;
  final RequestState movieDetailsState;
  final String movieDetailsErrorMessage;

  const DetailsMovieState(
      {this.movieDetails,
      this.movieDetailsState = RequestState.loading,
      this.movieDetailsErrorMessage = ''});

  @override
  List<Object?> get props => [
        movieDetails,
        movieDetailsState,
        movieDetailsErrorMessage,
      ];
}
