import 'package:movies_clean_architecture_test/domain/entities/movie_recommendation_entity.dart';

class MovieRecommendationModel extends MovieRecommendationEntity {
  const MovieRecommendationModel({
    required super.id,
    super.backdropPath,
  });

  factory MovieRecommendationModel.fromJson(Map<String, dynamic> jsonData) {
    return MovieRecommendationModel(
      id: jsonData['id'],
      backdropPath:
          jsonData['poster_path'] ?? 'fvgR62s7bJizAS8xnGZCHmZrPbw.jpg',
    );
  }
}
