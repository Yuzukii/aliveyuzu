import 'package:aliveyuzu/widgets/clickable_logo.dart';
import 'package:aliveyuzu/widgets/custom_footer.dart';
import 'package:flutter/material.dart';

class AboutView extends StatefulWidget {
  const AboutView({
    Key? key,
  }) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  bool animate = false;

  double vHeight = 0;
  double vWidth = 0;
  double topMargin = 0;
  double imageTopMargin = 0;
  double imageStartPos = 0;
  double imageAnimatedLeft = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => {_beginAnimation()});
  }

  @override
  Widget build(BuildContext context) {
    //print('Current animate value is: ' + animate.toString());
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          _initialCalculations(constraint);
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: Container(
                width: constraint.maxWidth,
                height: constraint.maxHeight,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/mainbg.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    AnimatedPositioned(
                      width: constraint.maxWidth,
                      height: 100,
                      top: animate ? 0 : (constraint.maxHeight / 2) - 50,
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        height: 100,
                        color: const Color.fromRGBO(160, 160, 160, 1),
                        child: const Center(
                          child: ClickableLogo(),
                        ),
                      ),
                    ),
                    _aboutTextBox(),
                    _aboutImageBox(),
                    Positioned(
                      width: constraint.maxWidth,
                      bottom: 23.5,
                      child: const CustomFooter(),
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

  _initialCalculations(BoxConstraints constraint) async {
    if (constraint.maxWidth >= 1220) {
      vWidth = constraint.maxWidth / 2;
      vHeight = 479;
      topMargin = (constraint.maxHeight / 2) - (479 / 2);
      imageTopMargin = (constraint.maxHeight / 2) - (479 / 2);
      imageStartPos = constraint.maxWidth;
      imageAnimatedLeft = constraint.maxWidth / 2;
    } else {
      vWidth = constraint.maxWidth;
      vHeight = (constraint.maxHeight - 100) / 2;
      topMargin = 100;
      imageTopMargin = vHeight + topMargin;
      imageStartPos = constraint.maxWidth;
      imageAnimatedLeft = 0;
    }
  }

  _beginAnimation() {
    setState(() {
      animate = true;
    });
  }

  _aboutTextBox() {
    return AnimatedPositioned(
      width: vWidth,
      height: vHeight,
      left: animate ? 0 : -vWidth,
      top: topMargin,
      duration: const Duration(seconds: 1),
      child: Container(
        padding: const EdgeInsets.only(left: 50, right: 50),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'ABOUT ME',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Hi, my name is Kelvin and I am a junior developer.\n\nIn my professional capacity, I work on HR systems delivered in the form of web applications.\n\nMy personal interest lies within mobile application development and I am currentlylearning about Flutter framework.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }

  _aboutImageBox() {
    return AnimatedPositioned(
      width: vWidth,
      height: vHeight,
      left: animate ? imageAnimatedLeft : imageStartPos,
      top: imageTopMargin,
      duration: const Duration(seconds: 1),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/images/about-mbpro.jpg"),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
