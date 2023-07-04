import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String activityImagePath;
  final String title;
  final String name;

  const ActivityCard(
      {required this.activityImagePath,
      required this.title,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xffFBF6FF),
            borderRadius: BorderRadius.circular(12)),
        width: 130,
        // height: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            // picture
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

            // title
            Flexible(
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

            const Spacer(),

            // name
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
