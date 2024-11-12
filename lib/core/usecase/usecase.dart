import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:finances/core/usecase/erros/failures.dart';

abstract class Usecase<Ouput, Input> {
  Future<Either<Failure, Ouput>> call(Input params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
