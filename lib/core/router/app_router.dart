import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test_bug/core/router/app_routes.dart';
import 'package:go_router_test_bug/modules/first_page/app/ui/pages/first_page.dart';
import 'package:go_router_test_bug/modules/second_page/app/ui/pages/second_page.dart';
import 'package:go_router_test_bug/modules/third_page/app/ui/pages/third_page.dart';

class AppRouter {
  static final router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoutes.firstpage.path,
    routes: [
      GoRoute(
        path: AppRoutes.firstpage.path,
        name: AppRoutes.firstpage.name,
        pageBuilder: (context, state) => PageBuilder.transition(const FirstPage()),
      ),
      GoRoute(
        path: AppRoutes.secondpage.path,
        name: AppRoutes.secondpage.name,
        pageBuilder: (context, state) => PageBuilder.transition(const SecondPage()),
      ),
      GoRoute(
        path: AppRoutes.thirdpage.path,
        name: AppRoutes.thirdpage.name,
        pageBuilder: (context, state) => PageBuilder.transition(const ThirdPage()),
      ),
    ],
  );
}

class PageBuilder {
  static Page transition(Widget child) {
    return CustomTransitionPage<void>(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
        position: animation.drive(
          Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ),
        ),
        child: child,
      ),
    );
  }
}
