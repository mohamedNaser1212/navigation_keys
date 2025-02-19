import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'details_screen.dart';
import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case AppRoutes.details:

        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => DetailsScreen(data: args));
        }
        return _errorRoute('Invalid arguments for ${AppRoutes.details}');
      default:
        return _errorRoute('Route not found');
    }
  }

  static Route<dynamic> _errorRoute(String message) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: Center(child: Text(message)),
      );
    });
  }
}
