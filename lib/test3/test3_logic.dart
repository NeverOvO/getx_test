import 'package:get/get.dart';

class Test3Logic extends GetxController {

   var count = 0.obs;

  void increase(){
    count = ++count;
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
