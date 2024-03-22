import 'package:get/get.dart';

class ImageSelectionController extends GetxController {
    final RxList<bool> isSelected = List.generate(30, (_) => false).obs;

  void toggleSelection(int index) {
    isSelected[index] = !isSelected[index];
  }
}
