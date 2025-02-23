import 'package:flutter/material.dart';
import 'package:todo_socond/common/app_colors.dart';

class CustomElevatedButtom extends StatelessWidget {
  const CustomElevatedButtom({super.key, this.onPressed , required this.title});
  final Function()? onPressed;
  final String title ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                  ),
                  onPressed: onPressed,
                 child:  Text(title));
  }
}