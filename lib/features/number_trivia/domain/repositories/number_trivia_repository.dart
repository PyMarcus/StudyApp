import 'package:dartz/dartz.dart';
import 'package:study_app/core/errors/failure.dart';
import 'package:study_app/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getNumberTriviaByNumber(int number);
  Future<Either<Failure, NumberTrivia>> getNumberTriviaByRandom();
}
