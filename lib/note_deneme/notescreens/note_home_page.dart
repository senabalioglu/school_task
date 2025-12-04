import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooltaskdenfinal1/note_deneme/widgetsnote/user_input.dart';

import '../modelsnote/db_model.dart';
import '../modelsnote/todo_model.dart';
import '../widgetsnote/todo_list.dart';

class NoteHomePage extends StatefulWidget {
  const NoteHomePage({ Key? key }) : super(key: key);

  @override
  State<NoteHomePage> createState() => _NoteHomePageState();
}

class _NoteHomePageState extends State<NoteHomePage> {
  var db = DatabaseConnect();

  void addItem(Todo todo) async{
    await db.insertTodo(todo);
    setState(() {});
  }

  void deleteItem(Todo todo) async{
    await db.deleteTodo(todo);
    setState(() {}); 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4DD0E1),
      appBar: AppBar(
        backgroundColor: Color(0xFF4DD0E1),
        title: const Text('Grades'),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          //TodoCard(),
          TodoList(insertFunction: addItem, deleteFunction: deleteItem,),
          UserInput(insertFunction: addItem,),
        ],
      ),
    );
  }
}