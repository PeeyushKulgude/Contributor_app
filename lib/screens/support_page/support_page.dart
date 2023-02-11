import 'package:assignment_1/constants.dart';
import 'package:assignment_1/screens/support_page/controllers/support_page_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SupportScreen extends StatelessWidget {
  final ctr = Get.put(SupportPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(
              Get.arguments.img_url,
              height: 22,
            )),
        title: Text(
          "${Get.arguments.name}",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Text(
                "Send your love to ${Get.arguments.name} to\n become a real fan.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                    child: GetBuilder<SupportPageController>(
                        init: ctr,
                        builder: (value) {
                          return DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: ctr.dropdownvalue,
                              items: ctr.currencylist.map((String dvalue) {
                                return DropdownMenuItem<String>(
                                  value: dvalue,
                                  child: Text(dvalue),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                ctr.changeState(newValue!);
                                // ctr.onchange();
                              },
                            ),
                          );
                        }),
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 30, 0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) => ctr.onchange(),
                        controller: ctr.amountcontroller,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    )),
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: TextField(
                  controller: ctr.namecontroller,
                  style: TextStyle(),
                  decoration: InputDecoration(
                    hintText: "Your name (optional)",
                    hintStyle: TextStyle(),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: TextField(
                  controller: ctr.descriptioncontroller,
                  maxLines: 6,
                  style: TextStyle(),
                  decoration: InputDecoration(
                    hintText: "Say Some thing nice (optional)",
                    hintStyle: TextStyle(),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  width: 200,
                  margin: EdgeInsets.all(10),
                  height: 50.0,
                  child: GetBuilder<SupportPageController>(
                      init: ctr,
                      builder: (value) {
                        return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              ctr.storedata(
                                  Get.arguments.name, Get.arguments.id);
                              Get.back();
                            },
                            child: Text("${ctr.dropdownvalue}   ${ctr.amt}",
                                style: TextStyle(fontSize: 15)));
                      }),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
