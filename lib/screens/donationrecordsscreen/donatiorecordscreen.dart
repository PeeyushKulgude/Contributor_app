
import 'package:assignment_1/screens/donationrecordsscreen/controllers/donatiomrecordcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonationRecordScreen extends StatelessWidget {
  // const DonationRecordScreen({Key? key}) : super(key: key);
  var ctr = Get.put(DonationRecordController());
  @override
  Widget build(BuildContext context) {
    ctr.getdata();
    return Scaffold(
      appBar: AppBar(
        title: Text("Donations"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: DataTable(
              columns: [
                DataColumn(label: Text("ID")),
                DataColumn(label: Text("currency")),
                DataColumn(label: Text("amount")),
                DataColumn(label: Text("Creator")),
                DataColumn(label: Text("Message")),
              ],
              rows: [
                for (var item in ctr.datalist)
                  DataRow(cells: [
                    DataCell(Text(item.id)),
                    DataCell(Text(item.currency)),
                    DataCell(Text(item.amount)),
                    DataCell(Text(item.name)),
                    DataCell(Text(item.msg))
                  ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
