import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  // const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/icons/main_top.png",
            ),
          )
        ],
      ),
    );
  }
}
