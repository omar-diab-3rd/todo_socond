import 'package:flutter/material.dart';
import 'package:todo_socond/common/widgets/custom_scaffold_bg.dart';
import 'package:todo_socond/screens/widgets/bottom_sheet_form.dart';
import 'package:todo_socond/taps/settings/settings_tap.dart';
import 'package:todo_socond/taps/tasks/tasks_tap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tapsList = [
       TasksTap() ,
      const SettingsTap()];
     int currentTapIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return  CustomScaffoldBg(
      appBar: AppBar(
        title:const Text("TODO List"),
      ),
      bottomNavigationBar: BottomAppBar(
        shape:const  CircularNotchedRectangle(),
        notchMargin: 20,
        padding: const EdgeInsets.all(0),
        clipBehavior: Clip.hardEdge,
        elevation: 115,
        shadowColor: Colors.blue,
        child: BottomNavigationBar( 
          onTap: (value) {
            currentTapIndex = value ;
            setState(() {
              
            });
          },
          currentIndex: currentTapIndex,
        items:const  [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "tasks list") ,

            BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings")
        ]
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
              isScrollControlled: true,
              context: context, builder: (context )
            {return BottomSheetForm();
            });
             
          },
          child: const Icon(
            Icons.add ,
            size: 35,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
         body: tapsList[currentTapIndex],
    );
  }
}