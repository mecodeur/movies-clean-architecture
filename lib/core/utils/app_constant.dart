class AppConstant{
  static const baseUrl = 'https://api.themoviedb.org/3';
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';

  static const String appName = 'Movie App';
  static const String popular = 'Popular';
  static const String seeMore = 'See More';
  static const String topRated = 'Top Rated';
  static const String nowPlaying = 'Now Playing';
  static const String genres = 'Genres';
}