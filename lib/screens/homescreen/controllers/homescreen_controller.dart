import 'package:assignment_1/screens/homescreen/models/creator_model.dart';
import 'package:assignment_1/screens/homescreen/models/creatorsdatamodel.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeScreenController extends GetxController {
  Rx<CreatorsDataModel> creatorsdatamodelobj = CreatorsDataModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
