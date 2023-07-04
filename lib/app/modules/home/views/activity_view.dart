import 'package:app_ukm/app/modules/home/views/activity/activity_listcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  //.....
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.sort,
                      //llll
                    ),
                    Text("Sort")
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  //.....
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.filter,
                      //llll
                    ),
                    Text("Filter")
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GridView.count(
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            crossAxisCount: 2,
            shrinkWrap: true, // <---
            physics: const NeverScrollableScrollPhysics(), // <---
            children: const [
              ActivityList(
                activityImagePath: 'assets/images/ft_consept1.png',
                title: 'Crud Laravel 8',
                name: 'Cristian Duri',
              ),
              ActivityList(
                activityImagePath: 'assets/images/ft_consept1.png',
                title: 'Crud Laravel 8',
                name: 'Cristian Duri',
              ),
              ActivityList(
                activityImagePath: 'assets/images/ft_consept1.png',
                title: 'Crud Laravel 8',
                name: 'Cristian Duri',
              ),
              ActivityList(
                activityImagePath: 'assets/images/ft_consept1.png',
                title: 'Crud Laravel 8',
                name: 'Cristian Duri',
              ),
              ActivityList(
                activityImagePath: 'assets/images/ft_consept1.png',
                title: 'Crud Laravel 8',
                name: 'Cristian Duri',
              ),
              ActivityList(
                activityImagePath: 'assets/images/ft_consept1.png',
                title: 'Crud Laravel 8',
                name: 'Cristian Duri',
              ),
              ActivityList(
                activityImagePath: 'assets/images/ft_consept1.png',
                title: 'Crud Laravel 8',
                name: 'Cristian Duri',
              ),
              ActivityList(
                activityImagePath: 'assets/images/ft_consept1.png',
                title: 'Crud Laravel 8',
                name: 'Cristian Duri',
              ),
            ],
          ).marginSymmetric(horizontal: 16),
        ]),
      ),
    );
  }
}
