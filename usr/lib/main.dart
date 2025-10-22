import 'package:flutter/material.dart';

import 'models/app_model.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const EisAppStore());
}

class EisAppStore extends StatelessWidget {
  const EisAppStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eis App Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}