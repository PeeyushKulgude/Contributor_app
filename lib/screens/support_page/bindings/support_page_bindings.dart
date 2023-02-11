import 'package:assignment_1/screens/support_page/controllers/support_page_controller.dart';
import 'package:get/get.dart';

class SupportPageBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    print("hi");
    Get.lazyPut(() => SupportPageController());
  }
}
