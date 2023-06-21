part of 'home_movies_bloc.dart';

abstract class HomeMoviesEvent extends Equatable {
  const HomeMoviesEvent();
}

class GetNowPlayingMoviesEvent extends HomeMoviesEvent {
  @override
  List<Object> get props => [];
}

class GetPopularMoviesEvent extends HomeMoviesEvent {
  @override
  List<Object> get props => [];
}

class GetTopMoviesEvent extends HomeMoviesEvent {
  @override
  List<Object> get props => [];
}
