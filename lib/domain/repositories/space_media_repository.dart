import 'package:either_dart/either.dart';
import 'package:finances/core/usecase/erros/failures.dart';
import 'package:finances/domain/entities/space_media_entity.dart';

abstract class ISpaceMediaRepository {
  Future<Either<Failure, SpaceMediaEntity>> getSpaceMediaFromDate(
      DateTime date);
}
