import 'package:flutter/material.dart';

class CircularNavItem extends StatelessWidget {
  final String title;
  final String navDir;
  const CircularNavItem({Key? key, required this.title, required this.navDir})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(160, 160, 160, 1),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
