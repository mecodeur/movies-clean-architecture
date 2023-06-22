part of 'details_movie_bloc.dart';

abstract class DetailsMovieEvent extends Equatable {
  const DetailsMovieEvent();
}

class GetMovieDetailsEvent extends DetailsMovieEvent {

  final int id;

  GetMovieDetailsEvent(this.id);

  @override
  List<Object> get props => [id];
}

class GetRecommendationMoviesEvent extends DetailsMovieEvent {
  final int id;

  const GetRecommendationMoviesEvent(this.id);

  @override
  List<Object> get props => [id];
}
