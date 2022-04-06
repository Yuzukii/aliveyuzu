import 'package:aliveyuzu/widgets/circular_nav_item.dart';
import 'package:flutter/material.dart';

class ResponsiveContainer extends StatelessWidget {
  final String type;

  const ResponsiveContainer(this.type, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return type == 'row1'
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularNavItem(
                title: 'ABOUT ME',
                navDir: 'About',
              ),
              SizedBox(
                width: 200,
              ),
              CircularNavItem(
                title: 'PORTFOLIO',
                navDir: 'Portfolio',
              ),
            ],
          )
        : type == 'row2'
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularNavItem(
                    title: 'BLOG',
                    navDir: 'Blog',
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  CircularNavItem(
                    title: 'CONTACT ME',
                    navDir: 'Contact',
                  ),
                ],
              )
            : type == 'col1'
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularNavItem(
                        title: 'ABOUT ME',
                        navDir: 'About',
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      CircularNavItem(
                        title: 'PORTFOLIO',
                        navDir: 'Portfolio',
                      ),
                    ],
                  )
                : type == 'col2'
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircularNavItem(
                            title: 'BLOG',
                            navDir: 'Blog',
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          CircularNavItem(
                            title: 'CONTACT ME',
                            navDir: 'Contact',
                          ),
                        ],
                      )
                    : Container();
  }
}
