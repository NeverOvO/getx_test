import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'test2_state.dart';

class Test2Logic extends GetxController {
  final Test2State state = Test2State();

  @override
  void onReady() {
    // TODO: implement onReady
    state.msg = Get.arguments["msg"];
    update();
    super.onReady();
  }

  void increase(){
    state.count = ++state.count;
    update();
  }


  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
