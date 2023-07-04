import 'package:app_ukm/app/modules/home/views/work/work_detail.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class WorkList extends StatelessWidget {
  final String title;
  final String date;

  const WorkList({required this.title, required this.date, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const WorkDetail());
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              height: 100,
              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //       color: Colors.black, offset: Offset(1, 6), blurRadius: 15),
                // ],
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        date,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
