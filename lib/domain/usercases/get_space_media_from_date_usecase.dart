import 'package:either_dart/src/either.dart';
import 'package:finances/core/usecase/erros/failures.dart';
import 'package:finances/core/usecase/usecase.dart';
import 'package:finances/domain/entities/space_media_entity.dart';
import 'package:finances/domain/repositories/space_media_repository.dart';

class GetSpaceMediaFromDateUsecase extends Usecase<SpaceMediaEntity, DateTime> {
  final ISpaceMediaRepository repository;

  GetSpaceMediaFromDateUsecase(this.repository);

  @override
  Future<Either<Failure, SpaceMediaEntity>> call(DateTime date) async {
    return await repository.getSpaceMediaFromDate(date);
  }
}
