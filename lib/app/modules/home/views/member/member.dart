import 'package:flutter/material.dart';

class MemberCirlce extends StatelessWidget {
  const MemberCirlce({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink,
        ),
      ),
    );
  }
}
