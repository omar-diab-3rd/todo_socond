import 'package:flutter/material.dart';
import 'package:todo_socond/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3) ,()
    {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
    return Container(
      color:const Color(0xffDFECDB),
      child: Image(image: AssetImage("assets/images/logo@3x (1).png")),
    );
  }
}