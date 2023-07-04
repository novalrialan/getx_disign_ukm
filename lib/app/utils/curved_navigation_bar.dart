import 'package:app_ukm/app/modules/home/controllers/buttom_navigation_controller.dart';
import 'package:app_ukm/app/modules/home/views/home_view.dart';
import 'package:app_ukm/app/modules/home/views/profile_view.dart';
import 'package:app_ukm/app/modules/home/views/ukm_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurvedNavigationBarPage extends StatelessWidget {
  CurvedNavigationBarPage({super.key});

  ButtomNavigationController buttomNavigationController =
      Get.put(ButtomNavigationController());

  final screens = [HomeView(), UKM(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
          () => IndexedStack(
            children: screens,
            index: buttomNavigationController.selectedIndex.value,
          ),
        ),
// <-------------------------------buttom navigationbar-------------------------
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.grey.shade100,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.ease,
          items: const [
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(Icons.group_add_rounded, size: 30),
            Icon(
              Icons.person,
              size: 30,
            )
          ],
          onTap: (value) {
            buttomNavigationController.changeIndex(value);
          },
        )
// <--------------------------------------------------------------------------->
        );
  }
}
