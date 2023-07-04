import 'package:app_ukm/app/modules/home/views/activity/activity_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActivityList extends StatelessWidget {
  final String activityImagePath;
  final String title;
  final String name;

  const ActivityList(
      {required this.activityImagePath,
      required this.title,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const ActivityDetail());
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFBF6FF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                activityImagePath,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  name,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
