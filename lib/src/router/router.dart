import '../screens/club_info_screen.dart';

import '../screens/schedule_screen.dart';
import 'package:go_router/go_router.dart';

import 'route_names.dart';
import '../screens/app_scaffold_screen.dart';
import '../screens/home_screen.dart';
import '../screens/news_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/not_found_screen.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(
    initialLocation: Routes.homeScreen,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return AppScaffoldScreen(child: child);
        },
        routes: [
          GoRoute(
            path: Routes.homeScreen,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: Routes.scheduleScreen,
            builder: (context, state) => const ScheduleScreen(),
          ),
          GoRoute(
            path: Routes.newsScreen,
            builder: (context, state) => const NewsScreen(),
          ),
          GoRoute(
            path: Routes.profileScreen,
            builder: (context, state) => const ProfileScreen(),
          ),
          GoRoute(
            path: Routes.settingsScreen,
            builder: (context, state) => const SettingsScreen(),
          ),
          GoRoute(
            path: Routes.clubInfoScreen,
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );

  static GoRouter get router => _router;
}
