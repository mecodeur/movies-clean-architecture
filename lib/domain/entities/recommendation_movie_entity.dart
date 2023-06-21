import 'package:equatable/equatable.dart';

class RecommendationMovieEntity extends Equatable {
  final String? backdropPath;
  final int id;

  const RecommendationMovieEntity({this.backdropPath, required this.id});

  @override
  List<Object?> get props => [backdropPath, id];
}