import 'package:app_ukm/app/model/work_model.dart';
import 'package:app_ukm/app/modules/home/controllers/buttom_navigation_controller.dart';
import 'package:app_ukm/app/modules/home/views/activity_view.dart';
import 'package:app_ukm/app/modules/home/views/work_view.dart';
import 'package:app_ukm/app/modules/home/views/activity/activity_card.dart';
import 'package:app_ukm/app/modules/home/views/work/work_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  ButtomNavigationController buttomNavigationController = Get.find();
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // bottomNavigationBar: CurvedNavigationBarPage(key: key),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // <-------------------------content name--------------------------------------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // set picture rigth
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // set nametag left
                      children: const [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Hello, ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Noval Rialan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ],
                    ),
                    //------------------ notifikasi-------------------------------------------------
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.notifications,
                        size: 35,
                      ),
                    ),
                    // <--------------------------------------------------------------------------->
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // <---------------------card content-------------------------------------------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(253, 222, 145, 254),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        // animation or cute picture
                        Image.asset('assets/images/img_content.png'),
                        // <--------------------------------------------------------------------------->
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 30),
                            child: Column(
                              children: [
                                const Text(
                                  "Selamat Datang",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const Text(
                                    "Memiliki kreatifitas untuk membangun kominitassdfsdfsdfsf UKM"),
                                const Text(
                                    "Apakah kamu sudah memiliki unit kegiatan kampus ..??  "),

                                // widget started button
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff8B44FF),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Center(
                                    child: Text(
                                      "Get started",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              182, 255, 255, 255)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // <--------------------------------------------------------------------------->
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Activity List For You",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(const Activity());
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              // <----------------------------List Activity-----------------------------------
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ActivityCard(
                      activityImagePath: 'assets/images/ft_consept1.png',
                      title: 'Crud Laravel 8',
                      name: 'Cristian Duri',
                    ),
                    ActivityCard(
                      activityImagePath: 'assets/images/ft_consept1.png',
                      title: 'Crud Laravel 8',
                      name: 'Cristian Duri',
                    ),
                    ActivityCard(
                      activityImagePath: 'assets/images/ft_consept1.png',
                      title: 'Crud Laravel 8',
                      name: 'Cristian Duri',
                    ),
                    ActivityCard(
                      activityImagePath: 'assets/images/ft_consept1.png',
                      title: 'Crud Laravel 8',
                      name: 'Cristian Duri',
                    ),
                    ActivityCard(
                      activityImagePath: 'assets/images/ft_consept1.png',
                      title: 'Crud Laravel 8',
                      name: 'Cristian Duri',
                    ),
                  ],
                ),
              ),
              // <--------------------------------------------------------------------------->
              const SizedBox(height: 25),
              // <----------------List Work For You-------------------------------------------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "List Work For You",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(const Work());
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 17),

              // Flexible(
              //   child: ListView.builder(
              //     padding: const EdgeInsets.all(10),
              //     itemCount: 4,
              //     physics: const NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemBuilder: ((context, index) =>
              //         const WorkCard(title: "Web Disign", date: "2023-04-05")),
              //   ),
              // ),
              // Flexible(
              //   child: ListView.builder(
              //     itemBuilder: (context, index) {
              //       final WorkModel workmodel = workList[index];
              //       return InkWell(
              //         onTap: () {},
              //         child: Card(
              //           color: Colors.amber,
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(8)),
              //           child: Padding(
              //             padding: const EdgeInsets.only(
              //                 top: 8, left: 16, right: 16, bottom: 8),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(workmodel.title),
              //                 SizedBox(
              //                   height: 4,
              //                 ),
              //                 Text(
              //                   workmodel.date,
              //                   style: TextStyle(fontSize: 10),
              //                 )
              //               ],
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //     itemCount: 2,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
