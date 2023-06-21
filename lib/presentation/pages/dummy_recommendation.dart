import 'package:movies_clean_architecture_test/domain/entities/genres_entity.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_details_entity.dart';
import 'package:movies_clean_architecture_test/domain/entities/recommendation_movie_entity.dart';

MovieDetailsEntity movieDetailDummy = const MovieDetailsEntity(
  backdropPath: "/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg",
  genres: [
    GenresEntity(name: 'Family', id: 10751),
  ],
  id: 438148,
  overview:
      "A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil enough to join them, with the backup of his followers, the Minions.",
  releaseDate: "2022-06-29",
  runtime: 87,
  title: "Minions: The Rise of Gru",
  voteAverage: 7.8,
);

List<RecommendationMovieEntity> recommendationDummy = [
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const RecommendationMovieEntity(
      backdropPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
];
