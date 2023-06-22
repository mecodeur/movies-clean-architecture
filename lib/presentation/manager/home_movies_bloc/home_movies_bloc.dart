import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_clean_architecture_test/core/utils/base_usecase.dart';

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
      : super(const HomeMoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase(NoParameter());
      result.fold((failure) {
        return emit(state.copyWith(
          nowPlayingMoviesState: RequestState.failure,
          nowPlayingMoviesErrorMessage: failure.message,
        ));
      }, (movies) {
        return emit(state.copyWith(
          nowPlayingMoviesState: RequestState.success,
          nowPlayingMovies: movies,
        ));
      });
    });

    on<GetPopularMoviesEvent>((event, emit) async {
      final result = await getPopularMoviesUseCase(NoParameter());
      result.fold((failure) {
        return emit(state.copyWith(
          popularMoviesState: RequestState.failure,
          popularMoviesErrorMessage: failure.message,
        ));
      }, (movies) {
        return emit(state.copyWith(
          popularMoviesState: RequestState.success,
          popularMovies: movies,
        ));
      });
    });

    on<GetTopMoviesEvent>((event, emit) async {
      final result = await getTopRatedMoviesUseCase(NoParameter());
      result.fold((failure) {
        return emit(state.copyWith(
          topRatedMoviesState: RequestState.failure,
          topRatedMoviesErrorMessage: failure.message,
        ));
      }, (movies) {
        return emit(state.copyWith(
          topRatedMoviesState: RequestState.success,
          topRatedMovies: movies,
        ));
      });
    });
  }
}
