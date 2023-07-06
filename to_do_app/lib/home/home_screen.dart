import 'package:flutter/material.dart';
import 'package:to_do_app/home/widget/seach_box.dart';
import 'package:to_do_app/home/widget/to_do_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 243, 239),
        appBar: AppBar(
          title: const Text(
            "ToDoList",
            style: TextStyle(color: Color.fromARGB(255, 111, 109, 109)),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 244, 243, 239),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.only(top: 20),
            children: const [DrawerHeader(child: Text("...."))],
          ),
        ),
        body:Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:  Column(
            children: [
           const   SearchBox(),
             Expanded(
               child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child:const Text("All ToDo List",
                    style: TextStyle(color: Colors.black,
                    fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ToDoItem(),
                  
             
                ],
               ),
             )
            ],
          ),
        ) ,
        );
  }
     
}
