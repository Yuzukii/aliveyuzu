import 'package:aliveyuzu/controllers/latest_item_controller.dart';
import 'package:aliveyuzu/widgets/clickable_logo.dart';
import 'package:flutter/material.dart';

class BlogView extends StatefulWidget {
  const BlogView({Key? key}) : super(key: key);

  @override
  State<BlogView> createState() => _BlogViewState();
}

class _BlogViewState extends State<BlogView> {
  bool _isElevated = false;
  bool _secondAnimationStart = false;

  LatestItemController latestItemController = LatestItemController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => {_beginAnimation()});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/mainbg.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      color: const Color.fromRGBO(160, 160, 160, 1),
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 198,
                              child: const ClickableLogo(),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 92,
                              margin: const EdgeInsets.only(
                                top: 10,
                              ),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/blog.png"),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                        // child: Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: [

                        //     Container(
                        //       decoration: BoxDecoration(
                        //         image: DecorationImage(
                        //           image: AssetImage("assets/images/blog.png"),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            height: 70,
                            width: constraint.maxWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 150,
                                  color: Colors.transparent,
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: _isElevated
                                          ? [
                                              BoxShadow(
                                                color: Colors.grey[500]!,
                                                offset: const Offset(4, 4),
                                                blurRadius: 5,
                                                spreadRadius: 1,
                                              ),
                                              const BoxShadow(
                                                color: Colors.white,
                                                offset: Offset(-4, -4),
                                                blurRadius: 5,
                                                spreadRadius: 1,
                                              )
                                            ]
                                          : null,
                                    ),
                                    child: Center(
                                      child: _isElevated
                                          ? const Text(
                                              'Development',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    160, 160, 160, 1),
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            )
                                          : null,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 100,
                                ),
                                Container(
                                  height: 40,
                                  width: 150,
                                  color: Colors.transparent,
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: _secondAnimationStart
                                          ? [
                                              BoxShadow(
                                                color: Colors.grey[500]!,
                                                offset: const Offset(4, 4),
                                                blurRadius: 5,
                                                spreadRadius: 1,
                                              ),
                                              const BoxShadow(
                                                color: Colors.white,
                                                offset: Offset(-4, -4),
                                                blurRadius: 5,
                                                spreadRadius: 1,
                                              )
                                            ]
                                          : null,
                                    ),
                                    child: Center(
                                      child: _secondAnimationStart
                                          ? const Text(
                                              'Lifestyle',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    160, 160, 160, 1),
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            )
                                          : null,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Container(
                            height: 50,
                            width: constraint.maxWidth,
                            color: Colors.transparent,
                            child: const Center(
                              child: Text(
                                'Latest',
                                style: TextStyle(
                                  fontSize: 36,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 100,
                            ),
                            height: 250,
                            width: constraint.maxWidth,
                            color: Colors.transparent,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children:
                                  latestItemController.getLatestItemList(),
                            ),
                          ),
                          Container(
                            height: 140,
                            width: constraint.maxWidth,
                            color: Colors.transparent,
                            child: const Center(
                              child: Text(
                                'Most Popular',
                                style: TextStyle(
                                  fontSize: 36,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 100,
                            ),
                            height: 250,
                            width: constraint.maxWidth,
                            color: Colors.transparent,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children:
                                  latestItemController.getLatestItemList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _beginAnimation() {
    // Future.delayed(const Duration(milliseconds: 1000), () {
    //   setState(() {
    //     _isElevated = true;
    //   });
    // });
    // Future.delayed(const Duration(milliseconds: 2000), () {
    //   setState(() {
    //     _secondAnimationStart = true;
    //   });
    // });

    //Trying out animation without delay
    setState(() {
      _isElevated = true;
      _secondAnimationStart = true;
    });
  }
}
