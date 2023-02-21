import 'package:get/get.dart';
import 'package:getx_test/Route.dart';

import 'test1_state.dart';

class Test1Logic extends GetxController {
  final Test1State state = Test1State();

  void increase(){
    state.count = ++state.count;
    update();
  }

  void jumpTwo(){
    Get.toNamed(RouteGet.test2Page,arguments: {"msg" : state.count});
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
