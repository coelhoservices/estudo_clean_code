import 'package:either_dart/either.dart';
import 'package:finances/core/usecase/erros/failures.dart';
import 'package:finances/core/usecase/usecase.dart';
import 'package:finances/domain/entities/space_media_entity.dart';
import 'package:finances/domain/repositories/space_media_repository.dart';
import 'package:finances/domain/usercases/get_space_media_from_date_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSpaceMediaRepository extends Mock implements ISpaceMediaRepository {}

void main() {
  late GetSpaceMediaFromDateUsecase usecase;
  late ISpaceMediaRepository repository;
  setUp(() {
    repository = MockSpaceMediaRepository();
    usecase = GetSpaceMediaFromDateUsecase(repository);
  });

  final tSpaceMedia = SpaceMediaEntity(
    description: 'la la Description',
    mediaTypes: 'image',
    title: 'lala Title',
    mediaUrl: 'lala URL',
  );
  final tDate = DateTime(2024, 11, 12);
  test(
    'should get space media for a given date from the repository',
    () async {
      when(() => repository.getSpaceMediaFromDate(tDate)).thenAnswer(
          (_) async => Right<Failure, SpaceMediaEntity>(tSpaceMedia));
      final result = await usecase(tDate);
      expect(result, Right(tSpaceMedia));
      verify(() => repository.getSpaceMediaFromDate(tDate)).called(1);
    },
  );
}
