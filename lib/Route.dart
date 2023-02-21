import 'package:get/get.dart';
import 'package:getx_test/main.dart';
import 'package:getx_test/test1/test1_view.dart';
import 'package:getx_test/test2/test2_view.dart';

class RouteGet {
  ///root page
  static const String main = "/";

  static const String test1Page = "/Test1Page";
  static const String test2Page = "/Test2Page";
  ///pages map
  static final List<GetPage> getPages = [
    GetPage(name: main, page: () => MyHomePage(title: '',)),
    GetPage(name: test1Page, page: () => Test1Page()),
    GetPage(name: test2Page, page: () => Test2Page()),
  ];
}