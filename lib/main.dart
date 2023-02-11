import 'package:assignment_1/approutes.dart';
import 'package:assignment_1/constants.dart';
import 'package:assignment_1/screens/homescreen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Assignment_1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homepage,
      getPages: AppRoutes.pages,
    );
  }
}
