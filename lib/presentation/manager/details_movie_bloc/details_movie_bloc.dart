import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_clean_architecture_test/core/utils/request_state.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_details_entity.dart';

import '../../../domain/entities/movie_recommendation_entity.dart';
import '../../../domain/usecases/get_movie_details_usecase.dart';
import '../../../domain/usecases/get_movies_recommendation_usecase.dart';

part 'details_movie_event.dart';

part 'details_movie_state.dart';

class DetailsMovieBloc extends Bloc<DetailsMovieEvent, DetailsMovieState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetMoviesRecommendationUseCase getMoviesRecommendationUseCase;

  DetailsMovieBloc(
      this.getMovieDetailsUseCase, this.getMoviesRecommendationUseCase)
      : super(const DetailsMovieState()) {
    on<GetMovieDetailsEvent>((event, emit) async {
      final result =
          await getMovieDetailsUseCase(MovieDetailsParameter(id: event.id));
      result.fold((failure) {
        return emit(state.copyWith(
            movieDetailsState: RequestState.failure,
            movieDetailsErrorMessage: failure.message));
      }, (movieDetails) {
        return emit(state.copyWith(
            movieDetailsState: RequestState.success,
            movieDetails: movieDetails));
      });
    });

    on<GetRecommendationMoviesEvent>((event, emit) async {
      final result = await getMoviesRecommendationUseCase(
          MoviesRecommendationParameters(id: event.id));
      result.fold((failure) {
        return emit(state.copyWith(
            recommendationMoviesState: RequestState.failure,
            recommendationMoviesMessageError: failure.message));
      }, (moviesRecommendation) {
        return emit(state.copyWith(
            recommendationMoviesState: RequestState.success,
            recommendationMovies: moviesRecommendation));
      });
    });
  }
}
