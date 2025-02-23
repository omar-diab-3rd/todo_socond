 import 'package:flutter/material.dart';
import 'package:todo_socond/common/app_theme.dart';
import 'package:todo_socond/screens/splash_screen.dart';

void main()
 {
  runApp(  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
    theme: AppTheme.lightTheme,
  ));
 }