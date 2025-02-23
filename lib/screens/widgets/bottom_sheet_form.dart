import 'package:flutter/material.dart';
import 'package:todo_socond/common/app_colors.dart';

class BottomSheetForm extends StatefulWidget {
  const BottomSheetForm({super.key});

  @override
  State<BottomSheetForm> createState() => _BottomSheetFormState();
}

class _BottomSheetFormState extends State<BottomSheetForm> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50 , vertical: 40),
      child: Form(
        key: formkey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text("Add New Task" ,
               style:Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 24) , ),
            ),
            const SizedBox(height: 20,),
             TextFormField(
              validator: (value)  {
                if(value ==null || value =="")
                {return  "task name cann't be empty ";}
                else if(value.length< 5)
                {
                  return "task name cann't be less than 5";}
                  else{
                    return null ;
                  }
              },
              style:const TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: " Task name ",
                hintStyle: TextStyle(
                  color: Colors.grey ,
                  fontWeight: FontWeight.normal
        
                )
              ),
            ),
            const SizedBox(height: 20,),
             const TextField(
              style: TextStyle(fontSize: 20),
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: " Task Details ",
                hintStyle: TextStyle(
                  color: Colors.grey ,
                  fontWeight: FontWeight.normal
        
                )
              ),
            ),
            const SizedBox(height: 20,),
             Text("Select Date" ,
            style: Theme.of(context).textTheme.titleMedium,
            ),
            TextButton(
              onPressed: ()async{
                var date =await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(Duration(days: 365)
                  
                  ),
                  
                  );
                  if(date!=null){
                    selectedDate=date;
                    setState(() {
                      
                    });
                  }
              },
               child:Text(selectedDate.toString().split(' ')[0] , 
               style:const TextStyle(
                fontSize: 22
               ) ,
               )),

            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                ),
                onPressed: (){
                formkey.currentState?.validate();
              },
               child: const Icon(Icons.done , color:Colors.white,)),
            )
          ],
        ),
      ),
    );
  }
}