import 'package:freezed_annotation/freezed_annotation.dart';
part 'answer.freezed.dart';

// flutter pub run build_runner build comanda dlya codegeneratsii

@freezed
class Answer with _$Answer {
  const factory Answer({required String? name, required int? number}) = _Answer;
}
