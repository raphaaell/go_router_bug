import 'package:flutter/material.dart';
import 'package:go_router_test_bug/core/router/app_navigator.dart';

extension NavigationHelpersExt on BuildContext {
  AppNavigator get navigator => AppNavigatorImpl(this);
}
