import 'package:dartz/dartz.dart';
import 'package:study_app/core/errors/failure.dart';
import 'package:study_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:study_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetNumberTriviaUsecase {
  final NumberTriviaRepository repository;

  GetNumberTriviaUsecase({required this.repository});

  Future<Either<Failure, NumberTrivia>> call({required int number}) async{
    return await repository.getNumberTriviaByNumber(number);
  }
}
