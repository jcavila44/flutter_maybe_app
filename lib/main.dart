import 'package:flutter/material.dart';
import 'package:flutter_maybe_app/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maybe App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maybe App Bar'),
        ),
        body: Center(
            child: FilledButton(
                onPressed: () {}, child: const Text('Clickeame'))),
      ),
    );
  }
}
