import 'package:assignment_1/approutes.dart';
import 'package:assignment_1/screens/homescreen/controllers/homescreen_controller.dart';
import 'package:assignment_1/screens/homescreen/widgets/creatorCard.dart';
import 'package:assignment_1/screens/support_page/support_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "TIOBU",
          ),
          backgroundColor: Colors.deepPurple,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.outlet_outlined),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ), //IconButton
          ], //<
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
              child: Text(
                "Recommendated Creator",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Flexible(
              child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 0.0,
                  children: List.generate(
                      controller.creatorsdatamodelobj.value.creatorsList.length,
                      (index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => SupportScreen(),
                            arguments: controller.creatorsdatamodelobj.value
                                .creatorsList[index]);
                      },
                      child: CreatorCard(controller
                          .creatorsdatamodelobj.value.creatorsList[index]),
                    );
                  })),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    onPressed: () {
                      Get.toNamed(AppRoutes.donationrecordpage);
                    },
                    child: Text("Donations Records",
                        style: TextStyle(fontSize: 15))),
              ),
            )
          ],
        ));
  }
}
