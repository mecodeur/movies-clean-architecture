part of 'home_movies_bloc.dart';

class HomeMoviesState extends Equatable {
  final List<MovieEntity> nowPlayingMovies;
  final RequestState nowPlayingMoviesState;
  final String nowPlayingMoviesErrorMessage;

  final List<MovieEntity> popularMovies;
  final RequestState popularMoviesState;
  final String popularMoviesErrorMessage;

  final List<MovieEntity> topRatedMovies;
  final RequestState topRatedMoviesState;
  final String topRatedMoviesErrorMessage;

  const HomeMoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingMoviesState = RequestState.loading,
    this.nowPlayingMoviesErrorMessage = '',
    this.popularMovies = const [],
    this.popularMoviesState = RequestState.loading,
    this.popularMoviesErrorMessage = '',
    this.topRatedMovies = const [],
    this.topRatedMoviesState = RequestState.loading,
    this.topRatedMoviesErrorMessage = '',
  });

  HomeMoviesState copyWith({
    List<MovieEntity>? nowPlayingMovies,
    RequestState? nowPlayingMoviesState,
    String? nowPlayingMoviesErrorMessage,
    List<MovieEntity>? popularMovies,
    RequestState? popularMoviesState,
    String? popularMoviesErrorMessage,
    List<MovieEntity>? topRatedMovies,
    RequestState? topRatedMoviesState,
    String? topRatedMoviesErrorMessage,
  }) {
    return HomeMoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingMoviesState:
          nowPlayingMoviesState ?? this.nowPlayingMoviesState,
      nowPlayingMoviesErrorMessage:
          nowPlayingMoviesErrorMessage ?? this.nowPlayingMoviesErrorMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularMoviesState: popularMoviesState ?? this.popularMoviesState,
      popularMoviesErrorMessage:
          popularMoviesErrorMessage ?? this.popularMoviesErrorMessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedMoviesState: topRatedMoviesState ?? this.topRatedMoviesState,
      topRatedMoviesErrorMessage:
          topRatedMoviesErrorMessage ?? this.topRatedMoviesErrorMessage,
    );
  }

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingMoviesState,
        nowPlayingMoviesErrorMessage,
        popularMovies,
        popularMoviesState,
        popularMoviesErrorMessage,
        topRatedMovies,
        topRatedMoviesState,
        topRatedMoviesErrorMessage,
      ];
}
