import 'package:aliveyuzu/widgets/circular_nav_item.dart';
import 'package:aliveyuzu/widgets/responsive_container.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          String _type ='';
          if (constraint.maxWidth < 750) {
            _type = 'col';
          }
          else if (constraint.maxWidth >= 750) {
            _type = 'row';
          }

          print(_type);

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
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Row to hold first two nav items
                      Container(
                        padding: const EdgeInsets.only(top:100),
                        
                        child: ResponsiveContainer(_type+'1'),
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
                        padding: const EdgeInsets.only(bottom: 100),
                        child: ResponsiveContainer(_type+'2')
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
