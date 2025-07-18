import 'package:dartz/dartz.dart';
import 'package:study_app/core/errors/failure.dart';
import 'package:study_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:study_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository{
  @override
  Future<Either<Failure, NumberTrivia>> getNumberTriviaByNumber(int number) {
    // TODO: implement getNumberTriviaByNumber
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getNumberTriviaByRandom() {
    // TODO: implement getNumberTriviaByRandom
    throw UnimplementedError();
  }
  
}