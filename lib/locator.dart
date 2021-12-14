import 'package:get_it/get_it.dart';
import 'Business%20Logic/something_controller.dart';
import 'Data/something_repository.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton(SomethingRepo.new);
  locator.registerLazySingleton(SomethingController.new);
}
