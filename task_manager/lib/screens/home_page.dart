import 'package:flutter/material.dart';
import 'package:task_manager/src/homepage_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomePageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.purple,
      ),

      body: ListView.builder(
        itemCount: controller.taskList.length,
        itemBuilder: (ctx, index){
        return InkWell(
          onLongPress: (){
            setState(() {
              controller.markComplete(index);
            });
          },
          child: ExpansionTile(
          title: Row(
            children: [
              Text(controller.taskList[index].taskName, style: const TextStyle(fontWeight: FontWeight.bold),),
              
              const SizedBox(width: 30,),


              controller.taskList[index].isComplete ?
              Image.asset('assets/tick_icon.png', height: 20, width: 20,)
              : const SizedBox.shrink()

            ],
          ),
          leading: Image.asset('assets/task_icon.png', height: 30, width: 30,), 

          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    controller.taskList[index].taskDetails,
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            )
        ],),
        );
      }),


      floatingActionButton: FloatingActionButton(onPressed: (){

        showDialog(context: context, builder: (ctx){
          return AlertDialog(
            title: const Text('Add New Task', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                     TextField(
                      controller: controller.taskTitleController,
              decoration: const InputDecoration(
                label: Text('Title'),
                hintText: 'Type your task title...'
              ),
            ),

            TextField(
              controller: controller.taskDetailsController,
              decoration: const InputDecoration(
                label: Text('Details'),
                hintText: 'Type your task details...'
              ),
            ),
              ],
            ),

            actions: [
              ElevatedButton(onPressed: (){
                setState(() {
                  controller.addNewTask();
                });

                Navigator.pop(context);
              }, child: const Text('Add New Task', style: TextStyle(fontWeight: FontWeight.bold),))
            ],
          );
        });

      }, backgroundColor: Colors.purple.shade700, child: const Icon(Icons.add, color: Colors.white, size: 30,),),
    );
  }
}