import 'package:flutter/material.dart';
import 'package:books_zira/navigation_second.dart';
class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = const Color.fromRGBO(164, 197, 241, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation First - Brilyan'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _navigateAndGetColor(context);
          },
          child: const Text('Change Color'),
        ),
      ),
    );
  }

  Future<void> _navigateAndGetColor(BuildContext context) async {
    final selectedColor = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NavigationSecond()),
    );

    if (selectedColor != null) {
      setState(() {
        color = selectedColor;
      });
    }
  }
}

