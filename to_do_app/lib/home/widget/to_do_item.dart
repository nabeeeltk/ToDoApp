import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {},
        tileColor: Colors.white,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
         leading:const  Icon(Icons.check_box,color: Colors.blue,),
        title: const Text("Check Mail",
        style: TextStyle(fontSize: 16,color: Colors.black,),
        ),
        trailing: Container(
          margin:const  EdgeInsets.symmetric(vertical: 10),
          height:35,
          width:35 ,
          decoration:const  BoxDecoration(
            color: Colors.red
          ),
          child: IconButton(onPressed: () {
            
          }, icon:const  Icon(Icons.delete,size: 18,color: Colors.white,)),

        ),
        
      ),
    );
  }
}