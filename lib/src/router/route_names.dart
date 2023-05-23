import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/not_found_screen.dart';

class Routes {
  static const root = '/';
  static const homeScreen = '/home';
  static const scheduleScreen = '/schedule';
  static const newsScreen = '/news';
  static const profileScreen = '/profile';
  static const settingsScreen = '/settings';
  static const clubInfoScreen = '/clubInfo';
  //static profileNamedPage([String? name]) => '/${name ?? ':profile'}';
  static Widget errorWidget(BuildContext context, GoRouterState state) =>
      const NotFoundScreen();
}
