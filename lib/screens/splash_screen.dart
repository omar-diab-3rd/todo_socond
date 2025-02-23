import 'package:flutter/material.dart';
import 'package:todo_socond/common/app_colors.dart';
import 'package:todo_socond/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3) ,()
    {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
    return Container(
      color: AppColors.bglight,
      child: const Image(image: AssetImage("assets/images/logo@3x (1).png")),
    );
  }
}