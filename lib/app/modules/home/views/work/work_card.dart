import 'package:flutter/material.dart';

class WorkCard extends StatelessWidget {
  final String title;
  final String date;

  const WorkCard({required this.title, required this.date, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      height: 90,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: const Color.fromARGB(252, 134, 47, 171),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(date, style: const TextStyle(color: Colors.white)),
        onTap: () {
          print("on tap listtile");
        },
      ),
    );
  }
}
