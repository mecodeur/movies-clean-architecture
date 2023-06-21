import 'package:either_dart/src/either.dart';
import 'package:movies_clean_architecture_test/core/errors/failure.dart';
import 'package:movies_clean_architecture_test/core/utils/base_usecase.dart';
import 'package:movies_clean_architecture_test/domain/repository/base_movies_repository.dart';

class GetTopRatedMoviesUseCase extends BaseUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, dynamic>> call() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
