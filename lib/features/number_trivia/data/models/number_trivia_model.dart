import 'package:study_app/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  final int number;
  final String text;

  const NumberTriviaModel({required this.number, required this.text})
    : super(number: number, text: text);

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(number: json['number'], text: json['text']);
  }

  Map<String, dynamic> toJson() {
    return Map.of(<String, dynamic>{"number":this.number, "text":this.text});
  }
}
