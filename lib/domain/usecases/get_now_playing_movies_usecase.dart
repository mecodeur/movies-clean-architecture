import 'package:dartz/dartz.dart';
import 'package:movies_clean_architecture_test/core/utils/base_usecase.dart';
import 'package:movies_clean_architecture_test/domain/repository/base_movies_repository.dart';

import '../../core/errors/failure.dart';
import '../entities/movie_entity.dart';

class GetNowPlayingMoviesUseCase
    extends BaseUseCase<List<MovieEntity>, NoParameter> {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<MovieEntity>>> call(
      NoParameter parameters) async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
