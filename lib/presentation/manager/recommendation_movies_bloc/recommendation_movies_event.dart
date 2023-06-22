part of 'recommendation_movies_bloc.dart';

abstract class RecommendationMoviesEvent extends Equatable {
  const RecommendationMoviesEvent();
}

class GetRecommendationMoviesEvent extends RecommendationMoviesEvent {
  final int id;

  const GetRecommendationMoviesEvent({required this.id});

  @override
  List<Object> get props => [id];
}