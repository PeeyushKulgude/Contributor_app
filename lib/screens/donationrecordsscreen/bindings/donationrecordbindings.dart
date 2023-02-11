import 'package:assignment_1/screens/donationrecordsscreen/controllers/donatiomrecordcontroller.dart';
import 'package:get/get.dart';

class DonationRecordBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DonationRecordController());
  }
}
