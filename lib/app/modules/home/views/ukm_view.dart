import 'package:app_ukm/app/modules/home/views/news/news.dart';
import 'package:flutter/material.dart';

class UKM extends StatelessWidget {
  const UKM({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> menuList = [
      const Category(
        icon: Icon(
          Icons.laptop_mac,
          size: 35,
          color: Colors.blueAccent,
        ),
        caption: "PSG",
        color: Color(0xFFEEF7FE),
      ),
      const Category(
        icon: Icon(
          Icons.auto_graph,
          size: 35,
          color: Colors.greenAccent,
        ),
        caption: "KSPM",
        color: Color(0xFFD1FCD2),
      ),
      const Category(
        icon: Icon(
          Icons.sports_gymnastics_rounded,
          size: 35,
          color: Colors.redAccent,
        ),
        caption: "KRT",
        color: Color(0xFFF9CFCF),
      ),
      const Category(
        icon: Icon(
          Icons.sports_basketball,
          size: 35,
          color: Colors.grey,
        ),
        caption: "BSKT",
        color: Color(0xFFD5D0D3),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                        child: Image.asset(
                      "assets/images/team_colab.png",
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width,
                    )),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      alignment: Alignment.center,
                      child: const Text('UKM'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                      right: 50,
                    ),
                    child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        runSpacing: 20,
                        spacing: 50,
                        children: [
                          ...menuList.toList(),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color(0xFFAC9CEC)
                                        .withOpacity(0.2),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      // Get.to(const SlideUpMenu());
                                      showBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            var widMenu = menuList.toList();
                                            return Column(
                                              children: [
                                                const SizedBox(
                                                  height: 50,
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: const Text(
                                                        "Top Group",
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 18.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          widMenu[0],
                                                          widMenu[1],
                                                          widMenu[2],
                                                          widMenu[3],
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                    icon: const Icon(
                                      Icons.apps,
                                      size: 35,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                  ),
                                ),
                                const Text("More"),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Today's shared list",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const News(
                    title: 'Wisuda ukrim', description: 'asdasdasdasdasd'),
                const News(
                    title: 'Wisuda ukrim', description: 'asdasdasdasdasd'),
                const News(
                    title: 'Wisuda ukrim', description: 'asdasdasdasdasd'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final Icon icon;
  final String caption;
  final Color color;
  const Category({
    super.key,
    required this.icon,
    required this.caption,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: 70,
            width: 60,
            padding: const EdgeInsets.only(top: 14),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: color.withOpacity(0.3),
            ),
            child: Column(
              children: [
                Center(
                  child: icon,
                ),
              ],
            ),
          ),
          Text(
            caption,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
