import 'package:flutter/material.dart';

import '../models/task_model.dart';

class HomePageController {

  final TextEditingController taskTitleController = TextEditingController();
  final TextEditingController taskDetailsController = TextEditingController();
  


  List<TaskDataModel> taskList = [
    TaskDataModel(taskName: 'Hello World', taskDetails: 'taskDetails', isComplete: true)
  ];



  void addNewTask(){
    taskList.add(
      TaskDataModel(taskName: taskTitleController.text, taskDetails: taskDetailsController.text, isComplete: false)
    );
    taskTitleController.clear();
    taskDetailsController.clear();
  }


  void markComplete(int index){
    taskList[index].isComplete = !taskList[index].isComplete;
  }
}