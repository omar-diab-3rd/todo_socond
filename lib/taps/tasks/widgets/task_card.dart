import 'package:flutter/material.dart';
import 'package:todo_socond/common/app_colors.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    double sHieght =MediaQuery.of(context).size.height;
    double sWidth =MediaQuery.of(context).size.width;

    return  Card(
      margin:const EdgeInsets.symmetric(horizontal: 20 ,vertical: 9),
      color: Colors.white,
      child: SizedBox(
        height: sHieght *.12,
        child: Center(
          child: ListTile(
            leading: Container(
              color: AppColors.primaryColor,
              width: 4,
              height: sHieght * .12,
            ),
            title: Text("History maker 3RD" ,
                 style:Theme.of(context).textTheme.titleMedium ,) ,
            subtitle:const Text("10.30"),
            trailing: Container(
              width: sWidth * .15,
              height:sHieght * .034,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.primaryColor,
              ),
              child: const Icon(
                Icons.done , 
                color: Colors.white,),
            ), 
          ),
        ),
      ),
    );
  }
}