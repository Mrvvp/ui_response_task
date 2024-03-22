import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProfileController extends GetxController {
  String selectedTime = "10:00 ";

  void selectTime(String time) {
    selectedTime = time;
    update();
  }


  String cookingCategory = "料理カテゴリー選択";
  void cookCategory (String category) {
    cookingCategory = category;
    update();
  }
  
  String bugetOptions = "¥ 1,000";
  void budgetOption (String budget) {
    bugetOptions = budget;
    update();
  }
}