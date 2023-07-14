import 'package:app_ukm/app/modules/home/views/news/news.dart';
import 'package:flutter/material.dart';

class UKM extends StatelessWidget {
  const UKM({super.key});

  @override
  Widget build(BuildContext context) {
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
                        crossAxisAlignment: WrapCrossAlignment.end,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // MENU LIST
                                ...menuList.sublist(0, 4),
                              ]),
                          // MENU MORE
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color(0xFFAC9CEC)
                                        .withOpacity(0.2),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      showBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            var topMenu = menuList;
                                            var resourceMenu = otherMenu;
                                            return Column(
                                              children: [
                                                const SizedBox(
                                                  height: 50,
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: const Text(
                                                              "Top Group",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        18.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                ...topMenu,
                                                              ],
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 20,
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: const Text(
                                                              "Other Resource",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        18.0),
                                                            child: Column(
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceAround,
                                                                  children: [
                                                                    // MENU OTHER RESOURCE
                                                                    ...resourceMenu
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
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

// WIDGET MENU UTAMA
final List<Widget> menuList = [
  const Category(
    icon: Icon(
      Icons.laptop_mac,
      size: 35,
      color: Color(0xFF264653),
    ),
    caption: "PSG",
    color: Color(0xFF003566),
  ),
  const Category(
    icon: Icon(
      Icons.queue_music_rounded,
      size: 35,
      color: Color(0xFF1e96fc),
    ),
    caption: "IMCH",
    color: Color(0xFF00bbf9),
  ),
  const Category(
    icon: Icon(
      Icons.connect_without_contact_rounded,
      size: 35,
      color: Color(0xFFc81d25),
    ),
    caption: "FUEL",
    color: Color(0xFFFF4D6D),
  ),
  const Category(
    icon: Icon(
      Icons.sports_basketball,
      size: 35,
      color: Color(0xff002855),
    ),
    caption: "BSKT",
    color: Color(0xFFD5D0D3),
  ),
  const Category(
    icon: Icon(
      Icons.auto_graph,
      size: 35,
      color: Color(0xFFffdd00),
    ),
    caption: "KSPM",
    color: Color(0xFF80ffdb),
  ),
  const Category(
    icon: Icon(
      Icons.video_settings_rounded,
      size: 35,
      color: Color(0xFF1D2D44),
    ),
    caption: "IMP",
    color: Color(0xFFaeb8fe),
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
      Icons.landscape_rounded,
      size: 35,
      color: Color(0xFF43aa8b),
    ),
    caption: "MPA",
    color: Color(0xFF34a0a4),
  ),
];

// WIDGET OTHER MENU
final List<Widget> otherMenu = [
  const Category(
    icon: Icon(
      Icons.vaccines_sharp,
      size: 35,
      color: Color(0xFF80ED99),
    ),
    caption: "Vaccine",
    color: Color(0xFFC7F9CC),
  ),
  const Category(
    icon: Icon(
      Icons.medical_services_rounded,
      size: 35,
      color: Color(0xFFBF0603),
    ),
    caption: "Donnor",
    color: Color(0xFFFF4D6D),
  ),
  const Category(
    icon: Icon(
      Icons.airport_shuttle_rounded,
      size: 35,
      color: Color(0xFFFDD500),
    ),
    caption: "Ambulance",
    color: Color(0xFFFFEA00),
  ),
];

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(11),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
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
            ],
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
