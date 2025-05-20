import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_1/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
    appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 3, 168, 244),
      title: Text('GetX Tutorials'),

    ),
    body: Center(
      child: Obx(() {
         
        return Text(
          controller.counter.toString(),
          style: TextStyle(fontSize: 60),
        );
      }),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        controller.incrementCounter();
      },
      
    ),
    );
  }
}