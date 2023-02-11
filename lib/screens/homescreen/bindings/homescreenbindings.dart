import 'package:get/get.dart';

import '../controllers/homescreen_controller.dart';

class HomeScreenBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeScreenController());
  }
}
