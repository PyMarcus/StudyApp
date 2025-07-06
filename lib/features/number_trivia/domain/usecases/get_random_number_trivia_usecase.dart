import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:study_app/core/errors/failure.dart';
import 'package:study_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:study_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:study_app/usecases/usecase.dart';

class GetRandomNumberTriviaUsecase implements Usecase<NumberTrivia, NoParams> {

  final NumberTriviaRepository repository;

  const GetRandomNumberTriviaUsecase({required this.repository});

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async{
    return await repository.getNumberTriviaByRandom();
  }
  
}

class NoParams extends Equatable {

  @override 
  List<Object?> get props => [];
}
