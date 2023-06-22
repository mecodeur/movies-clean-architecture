import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_clean_architecture_test/core/utils/request_state.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_recommendation_entity.dart';

import '../../../domain/usecases/get_movies_recommendation_usecase.dart';

part 'recommendation_movies_event.dart';

part 'recommendation_movies_state.dart';

class RecommendationMoviesBloc
    extends Bloc<RecommendationMoviesEvent, RecommendationMoviesState> {
  final GetMoviesRecommendationUseCase getMoviesRecommendationUseCase;

  RecommendationMoviesBloc(this.getMoviesRecommendationUseCase)
      : super(const RecommendationMoviesState()) {
    on<GetRecommendationMoviesEvent>((event, emit) async {
      final result = await getMoviesRecommendationUseCase(
          MoviesRecommendationParameters(id: event.id));
      result.fold((failure) {
        return emit(RecommendationMoviesState(
            recommendationMoviesState: RequestState.failure,
            recommendationMoviesMessageError: failure.message));
      }, (moviesRecommendation) {
        return emit(RecommendationMoviesState(
            recommendationMoviesState: RequestState.success,
            recommendationMovies: moviesRecommendation));
      });
    });
  }
}
