import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../pages/welcome/index.dart';
import 'names.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const Application = AppRoutes.Application;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.SIGN_IN,
    //   page: () => SignInPage(),
    //   binding: SignInBinding(),
    // ),
    // GetPage(
    //     name: AppRoutes.Application,
    //     page: () => ApplicationPage(),
    //     binding: ApplicationBinding(),
    //     middlewares: [
    //       RouteAuthMiddleware(priority: 1),
    //     ]),
    // GetPage(
    //   name: AppRoutes.Contact,
    //   page: () => ContactPage(),
    //   binding: ContactBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.Message,
    //   page: () => MessagePage(),
    //   binding: MessageBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.Me,
    //   page: () => MePage(),
    //   binding: MeBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.Chat,
    //   page: () => ChatPage(),
    //   binding: ChatBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.Photoimgview,
    //   page: () => PhotoimgviewPage(),
    //   binding: PhotoimgviewBinding(),
    // ),
  ];
}
