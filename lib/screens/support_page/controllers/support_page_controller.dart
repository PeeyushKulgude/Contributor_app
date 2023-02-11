import 'dart:convert';

import 'package:assignment_1/constants.dart';
import 'package:assignment_1/screens/support_page/models/donationmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SupportPageController extends GetxController {
  var currencylist = [
    "USD",
    "UK",
    "RS",
    "EURO",
    "PAK",
    "POUND",
  ];
  int count = 0;
  String dropdownvalue = "USD";
  String amt = "";
  TextEditingController amountcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();

  List storagelst = [];

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    amountcontroller.dispose();
    namecontroller.dispose();
    descriptioncontroller.dispose();
  }

  void changeState(String newValue) {
    dropdownvalue = newValue;
    update();
  }

  void onchange() {
    // currencytype = dropdownvalue as Rx<String>;
    // amt = amountcontroller.value.text as Rx<String>;
    amt = amountcontroller.value.text;
    update();
  }

  void storedata(String name, String id) {
    DonationModel donationModel = DonationModel(
        name, id, dropdownvalue, amt, descriptioncontroller.value.text);
    String test = "${box.read('key')}1";
    print(test);
    if (test == "null1") {
      print("hello");
      storagelst.clear();
      String donationmodeldata = jsonEncode(donationModel);
      storagelst.add(donationmodeldata);
      box.writeIfNull('key', storagelst);
    } else {
      storagelst = box.read('key');
      print(1);

      String donationmodeldata = jsonEncode(donationModel);
      storagelst.add(donationmodeldata);
      box.write('key', storagelst);
      print(box.read('key'));
    }
  }
}
// {"name":"Physics Walla","id":"C5","currency":"USD","amount":"66","msg":""}
