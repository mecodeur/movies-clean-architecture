import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/utils/request_state.dart';
import '../../../domain/entities/movie_entity.dart';
import '../../../domain/usecases/get_now_playing_movies_usecase.dart';

part 'home_movies_event.dart';

part 'home_movies_state.dart';

class HomeMoviesBloc extends Bloc<HomeMoviesEvent, HomeMoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;

  //final GetPopularMoviesUseCase getPopularMoviesUseCase;
  //final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  HomeMoviesBloc(this.getNowPlayingMoviesUseCase) : super(HomeMoviesState()) {
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
  }
}
