import 'package:flutter/material.dart';
import 'package:navigator_keys/navigation_keys_service.dart';
import 'app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NavigationService.pushNamed(
              AppRoutes.details,
              arguments: 'Hello from Home!',
            );
          },
          child: const Text('Go to Details Screen!'),
        ),
      ),
    );
  }
}
