import 'package:aliveyuzu/route/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClickableLogo extends StatelessWidget {
  const ClickableLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(HOME);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logo.png"),
          ),
        ),
      ),
    );
  }
}
