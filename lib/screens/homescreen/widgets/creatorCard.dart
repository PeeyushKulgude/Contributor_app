import 'package:assignment_1/screens/homescreen/controllers/homescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/creator_model.dart';

class CreatorCard extends StatelessWidget {
  CreatorCard(this.creatorcardmodelobj);

  CreatorsData creatorcardmodelobj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
            child: Container(
              // height: size.height / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  creatorcardmodelobj.img_url,
                  height: size.height / 3 - 160,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 2),
            child: Container(
              child: Text(
                creatorcardmodelobj.name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 2),
            child: Container(
              child: Text(
                creatorcardmodelobj.job,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
