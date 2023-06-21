import 'package:movies_clean_architecture_test/data/models/genres_model.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_details_entity.dart';

class MovieDetailsModel extends MovieDetailsEntity {
  const MovieDetailsModel(
      {required super.backdropPath,
      required super.genres,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.runtime,
      required super.title,
      required super.voteAverage});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> jsonData) {
    return MovieDetailsModel(
      backdropPath: jsonData['backdrop_path'],
      genres: List<GenresModel>.from(jsonData['genres'].map((e) => e)),
      id: jsonData['id'],
      overview: jsonData['overview'],
      releaseDate: jsonData['release_date'],
      runtime: jsonData['runtime'],
      title: jsonData['overview'],
      voteAverage: jsonData['vote_average'],
    );
  }
}
