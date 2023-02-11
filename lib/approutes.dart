import 'package:assignment_1/screens/donationrecordsscreen/bindings/donationrecordbindings.dart';
import 'package:assignment_1/screens/donationrecordsscreen/donatiorecordscreen.dart';
import 'package:assignment_1/screens/homescreen/bindings/homescreenbindings.dart';
import 'package:assignment_1/screens/homescreen/homescreen.dart';
import 'package:assignment_1/screens/support_page/bindings/support_page_bindings.dart';
import 'package:assignment_1/screens/support_page/support_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homepage = '/homepage';
  static const String supportpage = '/supportpage';
  static const String donationrecordpage = '/donationrecordpage';

  static List<GetPage> pages = [
    GetPage(
      name: homepage,
      page: () => HomeScreen(),
      bindings: [
        HomeScreenBindings(),
      ],
    ),
    GetPage(
      name: supportpage,
      page: () {
        return SupportScreen();
      },
      bindings: [
        SupportPageBindings(),
      ],
    ),
    GetPage(
      name: donationrecordpage,
      page: () => DonationRecordScreen(),
      bindings: [
        DonationRecordBindings(),
      ],
    ),
  ];
}
