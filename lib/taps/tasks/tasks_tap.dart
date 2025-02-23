
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_socond/common/app_colors.dart';
import 'package:todo_socond/taps/tasks/widgets/task_card.dart';

class TasksTap extends StatefulWidget {
  const TasksTap({super.key});

  @override
  State<TasksTap> createState() => _TasksTapState();
}

class _TasksTapState extends State<TasksTap> {
  EasyInfiniteDateTimelineController ? controller = EasyInfiniteDateTimelineController() ;
  DateTime selectedDate =DateTime.now();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: EasyInfiniteDateTimeLine(
            controller: controller,
            showTimelineHeader: false,
            firstDate: DateTime(2020),
            focusDate: selectedDate,
            lastDate: DateTime(2030),
            dayProps: EasyDayProps(
              todayStyle:DayStyle(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color:Colors.grey, width: 5 ),
                  borderRadius: BorderRadius.circular(12)
                )
              ) ,
              activeDayStyle: DayStyle(
                monthStrStyle: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w700 ,
                  color: AppColors.primaryColor,
                ),
                dayStrStyle:  TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w700 ,
                  color: AppColors.primaryColor,
                ),
                dayNumStyle:  TextStyle(
                  fontSize: 20 ,
                  fontWeight: FontWeight.w700 ,
                  color: AppColors.primaryColor,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                )
              ),
              inactiveDayStyle: DayStyle(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                )
              )
            ),
            onDateChange: (newdate) {
              selectedDate =newdate;
              setState(() {
                
              });
            },
          ),
        ),

        Expanded(
          child: ListView.builder(
            padding:const  EdgeInsets.only(top: 30),
            itemBuilder: (context ,index)=>TaskCard()),
        ),
      ],
    );
  }
}
