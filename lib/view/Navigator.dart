import 'package:perseverance/view/screen/HomeScreen.dart';
import 'package:get/get.dart';

class Navigator {
  void toHome() {
    Get.offAll(HomeScreen());
  }

  dynamic get arguments => Get.arguments;
}
