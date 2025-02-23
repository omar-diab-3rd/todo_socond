import 'package:flutter/material.dart';
import 'package:todo_socond/common/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme =
       ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        scaffoldBackgroundColor: AppColors.bglight ,

         

        appBarTheme: AppBarTheme(
          color: AppColors.primaryColor,
          foregroundColor: Colors.white,
          centerTitle: false,
        ),
         
         textTheme:  TextTheme(
          bodyMedium:const TextStyle(
            fontWeight: FontWeight.w700 ,
            fontSize: 14 ,
          ) ,
          titleMedium:TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w700 ,
            fontSize: 18 ,
          )  ,
          titleLarge:const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ) 

         ),

        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white ,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(size: 35 , color: AppColors.primaryColor),
          unselectedIconTheme: IconThemeData(size: 30 , color: Colors.grey[350]),
          showUnselectedLabels: false,
           ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: AppColors.primaryColor ,
            foregroundColor: Colors.white,
            shape:const  CircleBorder( 
              side: BorderSide(
                color: Colors.white ,
                width: 4))
          )

         );
}