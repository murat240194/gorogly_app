import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class AppScaffoldScreen extends StatelessWidget {
  const AppScaffoldScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        body: child, bottomNavigationBar: BottomNavBar());
  }
}