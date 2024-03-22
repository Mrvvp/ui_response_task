import 'package:get/get.dart';

class TickController extends GetxController {
  var tickStates = List.generate(14, (index) => false.obs);

  void toggleTick(int index) {
    tickStates[index].value = !tickStates[index].value;
  }
}