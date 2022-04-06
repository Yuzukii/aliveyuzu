import 'package:aliveyuzu/route/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircularNavItem extends StatelessWidget {
  final String title;
  final String navDir;
  const CircularNavItem({Key? key, required this.title, required this.navDir})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (navDir == 'About') {
          Get.toNamed(HOME+ABOUT);
        }
        else if (navDir == 'Portfolio') {
          //Get.to(PortfolioView());
        }
        else if (navDir == 'Blog') {
          Get.toNamed(HOME+BLOG); 
        }
        else if (navDir == 'Contact') {
          //Get.to(ContactView());
        }
      },
      child: Container(
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
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
