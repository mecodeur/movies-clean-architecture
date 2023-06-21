part of 'home_movies_bloc.dart';

class HomeMoviesState extends Equatable {
  final List<MovieEntity> nowPlayingMovies;
  final RequestState nowPlayingMoviesState;
  final String nowPlayingMoviesErrorMessage;

  const HomeMoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingMoviesState = RequestState.loading,
    this.nowPlayingMoviesErrorMessage = '',
  });

  /*HomeMoviesState copyWith({
    List<MovieEntity>? nowPlayingMovies,
    RequestState? nowPlayingMoviesState,
    String? nowPlayingMoviesErrorMessage,}){
    return HomeMoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingMoviesState: nowPlayingMoviesState ?? this.nowPlayingMoviesState,
      nowPlayingMoviesErrorMessage: nowPlayingMoviesErrorMessage ?? this.nowPlayingMoviesErrorMessage,
    );
  }*/

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingMoviesState,
        nowPlayingMoviesErrorMessage,
      ];
}
