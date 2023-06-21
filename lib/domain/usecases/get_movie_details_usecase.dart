import 'package:dartz/dartz.dart';
import 'package:movies_clean_architecture_test/core/errors/failure.dart';
import 'package:movies_clean_architecture_test/core/utils/base_usecase.dart';
import 'package:movies_clean_architecture_test/domain/entities/movie_details_entity.dart';
import 'package:movies_clean_architecture_test/domain/repository/base_movies_repository.dart';

class GetMovieDetailsUseCase extends BaseUseCase<MovieDetailsEntity, GetMovieDetailsParameter>{

  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetailsEntity>> call(GetMovieDetailsParameter parameter) async{
    return await baseMoviesRepository.getMovieDetails(parameter);
  }


}

class GetMovieDetailsParameter{
  final int id;

  GetMovieDetailsParameter({required this.id});
}