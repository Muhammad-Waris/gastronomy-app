import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'views/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors().getMaterialColor(),
      ),
      home: const SplashScreen(),
    );
  }
}


