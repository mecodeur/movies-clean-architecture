import 'package:dartz/dartz.dart';

import '../errors/failure.dart';

abstract class BaseUseCase<T>{

  Future<Either<Failure, T>> call();

}