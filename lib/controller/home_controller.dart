import 'package:get/get.dart';


class HomeController extends GetxController{
      var selectedIndex = RxInt(0);

  void toggleSelected(int index) {
    selectedIndex.value = selectedIndex.value == index ? 0 : index;
    update();
  }

     var selectedDay = RxString('');

  void updateSelectedDay(String day) {
    selectedDay.value = day;
    update();
  }
   final List<RxBool> isLikedList = List.generate(4, (_) => false.obs);

  void toggleLike(int index) {
  isLikedList[index].value = !isLikedList[index].value;
   
}

  
}