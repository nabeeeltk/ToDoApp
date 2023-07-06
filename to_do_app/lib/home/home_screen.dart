import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 243, 239),
        appBar: AppBar(
          title: const Text(
            "TodleDo ",
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
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                child: const TextField(decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  prefixIconConstraints: BoxConstraints(maxHeight: 20,minWidth: 25),
                  border: InputBorder.none,
                  hintText: 'Search'
                ),
                ),
              )
            ],
          ),
        ) ,
        );
  }
}
