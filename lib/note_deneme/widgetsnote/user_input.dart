import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../modelsnote/todo_model.dart';

class UserInput extends StatelessWidget {
  final textControllers = TextEditingController();
  final  Function insertFunction;
  UserInput({ required this.insertFunction, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      color: Colors.white.withOpacity(0.7),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TextField(
                controller: textControllers,
                decoration: const InputDecoration(
                  hintText: 'add new todo',
                  border: InputBorder.none,
                ),
              ),
              ),),
            const SizedBox(width: 10,),

            GestureDetector(
                onTap: (){
                  var myTodo = Todo(titles: textControllers.text, creationDate: DateTime.now(), isChecked: false);
                  insertFunction(myTodo);
                  },
                child: Container(
                  color: Color(0xFF9FA8DA),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: const Text('Add', style: TextStyle(color: Colors.white),),
                ),
              ),
            /*
            ElevatedButton(
              onPressed: () { var myTodo = Todo(titles: textControllers.text, creationDate: DateTime.now(), isChecked: false);
              insertFunction(myTodo); }, child: Text('Add'),
              /*
              child: GestureDetector(
                onTap: (){
                  var myTodo = Todo(titles: textControllers.text, creationDate: DateTime.now(), isChecked: false);
                  insertFunction(myTodo);
                  },
                child: Container(
                  color: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: const Text('Add', style: TextStyle(color: Colors.white),),
                ),
              ),
              */
            )
            */
        ],
      ),
    );
  }
}