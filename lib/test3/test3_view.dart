import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'test3_logic.dart';

class Test3Page extends StatefulWidget {
  const Test3Page({Key? key}) : super(key: key);

  @override
  _Test3PageState createState() => _Test3PageState();
}

class _Test3PageState extends State<Test3Page> {
  final logic = Get.put(Test3Logic());

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void dispose() {
    Get.delete<Test3Logic>();
    super.dispose();
  }
}