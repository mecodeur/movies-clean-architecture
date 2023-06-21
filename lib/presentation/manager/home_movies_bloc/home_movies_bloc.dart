import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/utils/request_state.dart';
import '../../../domain/entities/movie_entity.dart';
import '../../../domain/usecases/get_now_playing_movies_usecase.dart';
import '../../../domain/usecases/get_popular_movies_usecase.dart';
import '../../../domain/usecases/get_top_rated_movies_usecase.dart';

part 'home_movies_event.dart';

part 'home_movies_state.dart';

class HomeMoviesBloc extends Bloc<HomeMoviesEvent, HomeMoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;

  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  HomeMoviesBloc(this.getNowPlayingMoviesUseCase, this.getPopularMoviesUseCase,
      this.getTopRatedMoviesUseCase)
      : super(HomeMoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase();
      result.fold((failure) {
        return emit(HomeMoviesState(
          nowPlayingMoviesState: RequestState.failure,
          nowPlayingMoviesErrorMessage: failure.message,
        ));
      }, (movies) {
        return emit(HomeMoviesState(
          nowPlayingMoviesState: RequestState.success,
          nowPlayingMovies: movies,
        ));
      });
    });

    on<GetPopularMoviesEvent>((event, emit) async {
      final result = await getPopularMoviesUseCase();
      result.fold((failure) {
        return emit(HomeMoviesState(
          popularMoviesState: RequestState.failure,
          popularMoviesErrorMessage: failure.message,
        ));
      }, (movies) {
        return emit(HomeMoviesState(
          popularMoviesState: RequestState.success,
          popularMovies: movies,
        ));
      });
    });

    on<GetTopMoviesEvent>((event, emit) async {
      final result = await getTopRatedMoviesUseCase();
      result.fold((failure) {
        return emit(HomeMoviesState(
          topRatedMoviesState: RequestState.failure,
          topRatedMoviesErrorMessage: failure.message,
        ));
      }, (movies) {
        return emit(HomeMoviesState(
          topRatedMoviesState: RequestState.success,
          topRatedMovies: movies,
        ));
      });
    });
  }
}
