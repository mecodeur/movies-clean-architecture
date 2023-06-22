import 'package:equatable/equatable.dart';

class MovieRecommendationEntity extends Equatable {
  final String? backdropPath;
  final int id;

  const MovieRecommendationEntity({this.backdropPath, required this.id});

  @override
  List<Object?> get props => [backdropPath, id];
}
