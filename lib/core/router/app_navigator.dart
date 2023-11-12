import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test_bug/core/router/app_routes.dart';

abstract class AppNavigator {
  void pop();
  void pushFirstPage();
  void pushSecondPage();
  void pushThirdPage();
  void pushReplacementFirstPage();
  void pushReplacementSecondPage();
  void pushReplacementThirdPage();
}

class AppNavigatorImpl implements AppNavigator {
  final BuildContext context;
  AppNavigatorImpl(this.context);

  @override
  void pop() {
    context.pop();
  }

  @override
  void pushFirstPage() {
    context.pushNamed(AppRoutes.firstpage.name);
  }

  @override
  void pushSecondPage() {
    context.pushNamed(AppRoutes.secondpage.name);
  }

  @override
  void pushThirdPage() {
    context.pushNamed(AppRoutes.thirdpage.name);
  }

  @override
  void pushReplacementFirstPage() {
    context.pushReplacementNamed(AppRoutes.firstpage.name);
  }

  @override
  void pushReplacementSecondPage() {
    context.pushReplacementNamed(AppRoutes.secondpage.name);
  }

  @override
  void pushReplacementThirdPage() {
    context.pushReplacementNamed(AppRoutes.thirdpage.name);
  }
}
