import 'package:flutter/material.dart';
import 'package:navigator_keys/navigation_keys_service.dart';
import 'route_generator.dart';
import 'app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: AppRoutes.home,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
