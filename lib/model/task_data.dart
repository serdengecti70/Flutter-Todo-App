import 'package:todo_app/model/task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "buy bread"),
  ];

   //prevent acces directy like  => tasks.add
  List<Task> get tasks => _tasks;

  int get taskCounter => _tasks.length;

  void addTask(String data) {
    final task = Task(name: data);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }



}
