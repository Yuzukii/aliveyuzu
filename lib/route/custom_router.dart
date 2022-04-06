import 'package:aliveyuzu/route/constants.dart';
import 'package:aliveyuzu/views/about_view/about_view.dart';
import 'package:aliveyuzu/views/blog_view/blog_view.dart';
import 'package:aliveyuzu/views/home_view/home_view.dart';
import 'package:get/route_manager.dart';

class CustomRouter {
  static final pages = [
    GetPage(
      name: HOME,
      page: () => const HomeView(),
      transition: Transition.noTransition,
      children: [
        GetPage(
          name: ABOUT,
          page: () => const AboutView(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: BLOG,
          page: () => const BlogView(),
          transition: Transition.noTransition,
        ),
      ],
    ),
  ];
}
