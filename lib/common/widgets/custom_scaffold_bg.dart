import 'package:flutter/material.dart';
import 'package:todo_socond/common/app_colors.dart';

class CustomScaffoldBg extends StatelessWidget {
  const CustomScaffoldBg({super.key, this.body, this.bottomNavigationBar, this.floatingActionButton, this.floatingActionButtonLocation, this.appBar});
  final Widget? body;
  final Widget? bottomNavigationBar ;
  final Widget? floatingActionButton ;
  final FloatingActionButtonLocation? floatingActionButtonLocation ;
  final PreferredSizeWidget? appBar ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppColors.primaryColor ,
          Theme.of(context).scaffoldBackgroundColor
          ],
          stops: const[
            .2 ,
            .2 ,
          ] ,
          begin: Alignment.topCenter  , 
          end: Alignment.bottomCenter ,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: body,
        bottomNavigationBar:bottomNavigationBar ,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        appBar: appBar,
      ),
    );
  }
}