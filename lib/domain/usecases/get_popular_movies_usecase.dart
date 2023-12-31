import 'package:dartz/dartz.dart';
import 'package:movies_clean_architecture_test/core/errors/failure.dart';
import 'package:movies_clean_architecture_test/core/utils/base_usecase.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_entity.dart';
import 'package:movies_clean_architecture_test/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUseCase
    extends BaseUseCase<List<MovieEntity>, NoParameter> {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<MovieEntity>>> call(
      NoParameter parameters) async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
