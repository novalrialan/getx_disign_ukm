import 'package:app_ukm/app/modules/home/views/member/member.dart';
import 'package:app_ukm/app/modules/home/views/member/menu_member.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkDetail extends StatelessWidget {
  const WorkDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 350),
              child: Text(
                "Team Member",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Container(
                    height: 120,
                    child: ListView.builder(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const MemberCirlce();
                        }),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  MenuMember(
                    icon: Icon(Icons.task),
                    title: "task 5",
                  ),
                  MenuMember(
                    icon: Icon(Icons.timer),
                    title: " 12-02-2024 - 23-04-2024 ",
                  ),
                  MenuMember(
                    icon: Icon(Icons.message),
                    title: "2",
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 7,
              child: Container(
                color: const Color(0xffA47FE1),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(right: 320),
              child: Text(
                "Web App Disign",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
              ),
            )
          ],
        ),
      ),
    );
  }
}
