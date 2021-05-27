import 'package:get/get.dart';

class IncrementController extends GetxController {
  RxInt _increment = 0.obs;
  RxInt get increment => _increment;

  void add() {
    _increment++;
  }
}
