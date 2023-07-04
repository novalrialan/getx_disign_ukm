import 'package:app_ukm/app/modules/home/views/profile/screens/screenone.dart';
import 'package:app_ukm/app/modules/home/views/profile/screens/screentwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTabs extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController controller;

  final List<Tab> myTabs = <Tab>[
    Tab(
      text: 'sreent 1',
    ),
    Tab(
      text: 'sreent 2',
    )
  ];

  @override
  void onInit() {
    super.onInit();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}

class TabBarProfile extends StatelessWidget {
  TabBarProfile({super.key});

  final MyTabs _tabController = Get.put(MyTabs());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: TabBar(
              controller: _tabController.controller,
              tabs: _tabController.myTabs),
        ),
        Container(
          child: TabBarView(
              controller: _tabController.controller,
              children: [ScreenOne(), ScreenTwo()]),
        )
      ]),
    );
  }
}
