import 'package:flutter/material.dart';

class CircularNavItem extends StatelessWidget {
  final String title;
  final String navDir;
  const CircularNavItem({Key? key, required this.title, required this.navDir})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(title);
    return Container(
      height: 175,
      width: 175,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(160, 160, 160, 1),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
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
