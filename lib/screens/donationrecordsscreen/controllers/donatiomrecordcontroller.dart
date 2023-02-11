import 'dart:convert';

import 'package:assignment_1/constants.dart';
import 'package:assignment_1/screens/support_page/models/donationmodel.dart';
import 'package:get/get.dart';

class DonationRecordController extends GetxController {
  List<DonationModel> datalist = [];

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    getdata();
  }

  void getdata() {
    List lst = box.read('key');
    for (int i = 0; i < lst.length; i++) {
      Map<String, dynamic> jsondetails = jsonDecode(box.read('key')[i]);
      DonationModel data = DonationModel.fromJson(jsondetails);
      datalist.add(data);
      update();
    }
  }
}
