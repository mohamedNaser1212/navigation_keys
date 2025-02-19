import 'package:flutter/material.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();


  static Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return navigatorKey.currentState
            ?.pushNamed<T>(routeName, arguments: arguments) ??
        Future.value(null);
  }

  
  static Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return navigatorKey.currentState
            ?.pushReplacementNamed<T, TO>(routeName, arguments: arguments) ??
        Future.value(null);
  }

  static void pop<T extends Object?>([T? result]) {
    navigatorKey.currentState?.pop<T>(result);
  }

  static void popUntil(RoutePredicate predicate) {
    navigatorKey.currentState?.popUntil(predicate);
  }

  static Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    String routeName,
    RoutePredicate predicate, {
    Object? arguments,
  }) {
    return navigatorKey.currentState
            ?.pushNamedAndRemoveUntil<T>(routeName, predicate, arguments: arguments) ??
        Future.value(null);
  }
}
