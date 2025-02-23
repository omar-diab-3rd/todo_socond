import 'package:flutter/material.dart';
import 'package:todo_socond/taps/settings/settings_tap.dart';
import 'package:todo_socond/taps/tasks/tasks_tap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tapsList = [
     const TasksTap() ,
     const SettingsTap()];
     int currentTapIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text("To Do List",
         style: Theme.of(context).textTheme.titleLarge,) ,
      ),
      bottomNavigationBar: BottomAppBar(
        shape:const  CircularNotchedRectangle(),
        notchMargin: 20,
        padding: const EdgeInsets.all(0),
        clipBehavior: Clip.hardEdge,
        elevation: 30,
        shadowColor: Colors.black,
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
          onPressed: (){},
          child: const Icon(
            Icons.add ,
            size: 35,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}