import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:study_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:study_app/features/number_trivia/domain/usecases/get_random_number_trivia_usecase.dart';

import 'get_number_trivia_by_number_test.mocks.dart';

void main() {
  late MockNumberTriviaRepository repository;
  late GetRandomNumberTriviaUsecase usecase;

  setUp(() {
    repository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTriviaUsecase(repository: repository);
  });
  const trivia = NumberTrivia(number: 42, text: "Random trivia");

  test("should get a trivia from a random number", () async {
    // arrange
    when(
      repository.getNumberTriviaByRandom(),
    ).thenAnswer((_) async => Right(trivia));
    // act
    final triviaResponse = await usecase(NoParams());
    // assert
    expect(triviaResponse, Right(trivia));
    verify(repository.getNumberTriviaByRandom());
    verifyNoMoreInteractions(repository);
  });
}
