import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
  const BlogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/mainbg.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      color: Color.fromRGBO(160, 160, 160, 1),
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _blogNavBar(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _blogNavBar() {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 5,
          ),
          Container(
            color: Colors.transparent,
            height: 60,
          ),
          Container(
            color: Colors.white,
            height: 5,
          )
        ],
      ),
    );
  }
}
