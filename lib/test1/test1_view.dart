import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'test1_logic.dart';

class Test1Page extends StatefulWidget {
  const Test1Page({Key? key}) : super(key: key);

  @override
  createState() => _Test1PageState();
}

class _Test1PageState extends State<Test1Page> {
  final logic = Get.put(Test1Logic());
  final state = Get.find<Test1Logic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('计数器-进阶版')),
      body: Center(
        child: GetBuilder<Test1Logic>(
          builder: (logic) {
            return Text(
              '点击了 ${state.count} 次',
              style: const TextStyle(fontSize: 30.0),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => logic.jumpTwo(),
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<Test1Logic>();
    super.dispose();
  }
}