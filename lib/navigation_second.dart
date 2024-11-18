import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second - Brilyan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  color = const Color.fromRGBO(15, 21, 59, 1);
                  Navigator.pop(context, color);
                },
                child: const Text('Darker Blue')),
            ElevatedButton(
                onPressed: () {
                  color = const Color.fromRGBO(206, 212, 230, 1);
                  Navigator.pop(context, color);
                },
                child: const Text('Lighter Blue')),
            ElevatedButton(
                onPressed: () {
                  color = const Color.fromRGBO(157, 167, 208, 1);
                  Navigator.pop(context, color);
                },
                child: const Text('Blue purple-ish')),
          ],
        ),
      ),
    );
  }
}
