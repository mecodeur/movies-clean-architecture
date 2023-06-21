import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_clean_architecture_test/core/utils/request_state.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_details_entity.dart';

import '../../../domain/usecases/get_movie_details_usecase.dart';

part 'details_movie_event.dart';

part 'details_movie_state.dart';

class DetailsMovieBloc extends Bloc<DetailsMovieEvent, DetailsMovieState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;

  DetailsMovieBloc(this.getMovieDetailsUseCase) : super(DetailsMovieState()) {
    on<GetMovieDetailsEvent>((event, emit) async {
      final result =
          await getMovieDetailsUseCase(MovieDetailsParameter(id: event.id));
      result.fold((failure) {
        return emit(DetailsMovieState(
            movieDetailsState: RequestState.failure,
            movieDetailsErrorMessage: failure.message));
      }, (movieDetails) {
        return emit(DetailsMovieState(
            movieDetailsState: RequestState.success,
            movieDetails: movieDetails));
      });
    });
  }
}
