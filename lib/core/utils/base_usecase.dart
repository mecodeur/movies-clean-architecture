import 'package:either_dart/either.dart';

import '../errors/failure.dart';

abstract class BaseUseCase<T>{

  Future<Either<Failure, T>> call();

}