import 'package:aliveyuzu/widgets/circular_nav_item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/mainbg.jpg"),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Row to hold first two nav items
              Container(
                //padding: const EdgeInsets.only(left: 400, right: 400),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularNavItem(title: 'ABOUT ME', navDir: 'About'),
                    SizedBox(
                      width: 100,
                    ),
                    CircularNavItem(title: 'PORTFOLIO', navDir: 'Portfolio'),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              //Container to hold the logo
              Container(
                height: 100,
                color: Color.fromRGBO(160, 160, 160, 1),
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              //Row to hold bottom two nav items
              Container(
                //padding: const EdgeInsets.only(left: 400, right: 400),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularNavItem(title: 'SPARE PAGE', navDir: 'Spare'),
                    SizedBox(
                      width: 100,
                    ),
                    CircularNavItem(title: 'CONTACT ME', navDir: 'Contact'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
