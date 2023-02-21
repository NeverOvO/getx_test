import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/test1/test1_logic.dart';

import 'test2_logic.dart';

// class Test2Page extends StatefulWidget {
//   const Test2Page({Key? key}) : super(key: key);
//
//   @override
//   _Test2PageState createState() => _Test2PageState();
// }

class Test2Page extends StatelessWidget {
  final logic1 = Get.find<Test1Logic>();
  final logic = Get.put(Test2Logic());
  final state = Get
      .find<Test2Logic>()
      .state;

  @override
  Widget build(BuildContext context) {
    print("object");
    // print(Get.);
    return Scaffold(

      appBar: AppBar(title: const Text('计数器-进阶版')),
      body: Center(
          child: GetBuilder<Test2Logic>(builder: (logic) {
            return Text(
              '点击了 ${state.count} 次',
              style: TextStyle(fontSize: 30.0),
            );
          })
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.snackbar("上一个页面通知", state.msg.toString(),backgroundColor: Colors.white,margin: EdgeInsets.fromLTRB(20, 20, 20, 0),borderColor: Colors.yellow,borderWidth: 1);
          // Get.generalDialog(title: "!",textCancel: "q",textConfirm: "qw",textCustom: );
          logic.increase();
          logic1.increase();
        },
        child: Icon(Icons.add),
      ),
    );
  }

}