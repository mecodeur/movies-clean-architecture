import 'package:either_dart/src/either.dart';
import 'package:movies_clean_architecture_test/core/errors/failure.dart';
import 'package:movies_clean_architecture_test/core/utils/base_usecase.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_entity.dart';
import 'package:movies_clean_architecture_test/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<MovieEntity>> {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<MovieEntity>>> call() async {
    return await baseMoviesRepository.getNowPopularMovies();
  }
}
