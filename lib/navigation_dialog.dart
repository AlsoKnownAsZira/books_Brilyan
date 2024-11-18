import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = const Color.fromRGBO(164, 197, 241, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog - Brilyan'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showColorDialog(context);
            },
            child: const Text('Change Color')),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text("EY YO, Very Important Question!"),
            content: const Text("Choose a color would ya?"),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    color = const Color.fromRGBO(15, 21, 59, 1);
                    Navigator.pop(context, color);
                  },
                  child: const Text('Darker Blue')),
              TextButton(
                  onPressed: () {
                    color = const Color.fromRGBO(206, 212, 230, 1);
                    Navigator.pop(context, color);
                  },
                  child: const Text('Lighter Blue')),
              TextButton(
                  onPressed: () {
                    color = const Color.fromRGBO(157, 167, 208, 1);
                    Navigator.pop(context, color);
                  },
                  child: const Text('Blue purple-ish')),
            ],
          );
        });
    setState(() {});
  }
}
