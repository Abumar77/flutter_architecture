import 'dart:math';

import 'Model/answer.dart';

class SomethingRepo {
  Answer getSomethingRepo() {
    var random = Random();

    Answer? answer =
        Answer(name: 'Random number is', number: random.nextInt(100));

    return answer;
  }
}
