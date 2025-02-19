import 'package:flutter/material.dart';
import 'package:navigator_keys/navigation_keys_service.dart';

class DetailsScreen extends StatelessWidget {
  final String data;

  const DetailsScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                NavigationService.pop(context);
              },
              child: const Text('Go Back!'),
            ),
          ],
        ),
      ),
    );
  }
}
