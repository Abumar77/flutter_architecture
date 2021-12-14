import '../Data/Model/answer.dart';
import '../Data/something_repository.dart';

import '../locator.dart';

class SomethingController {
  Answer? getSomething() {
    return locator.get<SomethingRepo>().getSomethingRepo();
  }
}
