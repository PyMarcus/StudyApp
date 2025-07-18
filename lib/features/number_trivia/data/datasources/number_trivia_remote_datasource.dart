import 'package:study_app/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRemoteDatasource {
  // calls the http://numbersapi.com/{number}
  Future<NumberTrivia> getNumberTriviaByNumber(int number);
  // calls the http://numbersapi.com/random
  Future<NumberTrivia> getNumberTriviaByRandom();
}