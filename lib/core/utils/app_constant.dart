class AppConstant{
  static const baseUrl = "https://api.themoviedb.org/3";
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';
}