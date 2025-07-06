import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

import 'package:study_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:study_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:study_app/features/number_trivia/domain/usecases/get_number_trivia_usecase.dart';

import 'get_number_trivia_by_number_test.mocks.dart';

@GenerateMocks([NumberTriviaRepository])
void main() {
  late GetNumberTriviaUsecase usecase;
  late MockNumberTriviaRepository mockRepository;

  setUp(() {
    mockRepository = MockNumberTriviaRepository();
    usecase = GetNumberTriviaUsecase(repository: mockRepository);
  });

  const tNumber = 1;
  const tNumberTrivia = NumberTrivia(text: "test", number: 1);

  test("should get trivia for the number from the repository", () async {
    // arrange
    when(mockRepository.getNumberTriviaByNumber(any))
        .thenAnswer((_) async => Right(tNumberTrivia));

    // act
    final result = await usecase(const Params(number: 1));

    // assert
    expect(result, Right(tNumberTrivia));
    verify(mockRepository.getNumberTriviaByNumber(tNumber));
    verifyNoMoreInteractions(mockRepository);
  });
}
